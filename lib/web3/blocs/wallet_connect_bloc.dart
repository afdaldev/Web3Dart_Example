import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart_example/dart_defines/dart_defines.dart';
import 'package:web3dart_example/logging/logging.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

part 'wallet_connect_event.dart';

part 'wallet_connect_state.dart';

part 'wallet_connect_bloc.freezed.dart';

class WalletConnectBloc extends Bloc<WalletConnectEvent, WalletConnectState> {
  late final W3MService w3mService;

  WalletConnectBloc() : super(const _WalletConnectState()) {
    W3MChainPresets.chains.putIfAbsent('97', () => _bscTesNetChain);
    w3mService = W3MService(
      projectId: DartDefines.w3MProjectId,
      logLevel: LogLevel.error,
      metadata: const PairingMetadata(
        name: 'ISOMA dApp',
        description: 'ISOMA dApp Application',
        url: 'https://www.walletconnect.com/',
        icons: [
          'https://docs.walletconnect.com/assets/images/web3modalLogo-2cee77e07851ba0a710b56d03d4d09dd.png'
        ],
        redirect: Redirect(
          native: 'web3example://',
          universal: 'https://www.walletconnect.com',
        ),
      ),
      excludedWalletIds: {
        'fd20dc426fb37566d803205b19bbc1d4096b248ac04548e3cfb6b3a38bd033aa',
        // Coinbase Wallet
      },
      includedWalletIds: {
        'c57ca95b47569778a828d19178114f4db188b89b763c899ba0be274e97267d96',
        // Metamask
        // '1ae92b26df02f0abca6304df07debccd18262fdf5fe82daa81593582dac9a369', // Rainbow
        // 'fd20dc426fb37566d803205b19bbc1d4096b248ac04548e3cfb6b3a38bd033aa', // Coinbase Wallet
        // 'be49f0a78d6ea1beed3804c3a6b62ea71f568d58d9df8097f3d61c7c9baf273d', // Uniswap
      },
      // featuredWalletIds: {
      //   '19177a98252e07ddfc9af2083ba8e07ef627cb6103467ffebb3f8f4205fd7927', // Ledger Live
      //   '4457c130df49fb3cb1f8b99574b97b35208bd3d0d13b8d25d2b5884ed2cad13a', // Shapeshift
      //   'fd20dc426fb37566d803205b19bbc1d4096b248ac04548e3cfb6b3a38bd033aa', // Coinbase Wallet
      //   '38f5d18bd8522c244bdd70cb4a68e0e718865155811c043f052fb9f1c51de662', // Bitget
      // },
    );

    w3mService.addListener(() => add(const WalletConnectEvent.listener()));
    //
    w3mService.onModalConnect
        .subscribe((args) => add(WalletConnectEvent.modalConnect(args)));
    w3mService.onModalDisconnect
        .subscribe((args) => add(WalletConnectEvent.modalDisconnect(args)));
    w3mService.onModalError
        .subscribe((args) => add(WalletConnectEvent.modalError(args)));
    //
    w3mService.onSessionExpireEvent
        .subscribe((args) => add(WalletConnectEvent.sessionExpireEvent(args)));
    w3mService.onSessionUpdateEvent
        .subscribe((args) => add(WalletConnectEvent.sessionUpdateEvent(args)));
    w3mService.onSessionEventEvent
        .subscribe((args) => add(WalletConnectEvent.sessionEventEvent(args)));

    Future.delayed(
      Duration.zero,
      () async => await w3mService.init(),
    );

    on<_ListenerEvent>((event, emit) {
      emit(state.copyWith(
        isConnect: w3mService.isConnected,
        chain: w3mService.selectedChain?.chainId,
      ));
    });

    on<_ModalConnectEvent>((event, emit) {
      log.d('[$runtimeType] modal connect ${event.event.toString()}');
      log.d('[$runtimeType] modal connect ${event.event?.session.address}');
      log.d('[$runtimeType] modal connect ${w3mService.session?.address}');
    });

    on<_ModalDisconnectEvent>((event, emit) {
      log.i('[$runtimeType] modal disconnect ${event.event.toString()}');
    });

    on<_ModalErrorEvent>((event, emit) {
      log.e('[$runtimeType] _onModalError ${event.event?.toString()}');
      // When user connected to Coinbase Wallet but Coinbase Wallet does not have a session anymore
      // (for instance if user disconnected the dapp directly within Coinbase Wallet)
      // Then Coinbase Wallet won't emit any event
      if ((event.event?.message ?? '').contains('Coinbase Wallet Error')) {
        w3mService.disconnect();
      }
    });

    on<_SessionExpireEventEvent>((event, emit) {
      log.i('[$runtimeType] _onSessionExpired ${event.event?.toString()}');
    });

    on<_SessionUpdateEventEvent>((event, emit) {
      log.i('[$runtimeType] _onSessionUpdate ${event.event?.toString()}');
    });

    on<_SessionEventEventEvent>((event, emit) {
      log.i('[$runtimeType] _onSessionEvent ${event.event?.toString()}');
    });
  }

  @override
  Future<void> close() {
    w3mService.removeListener(() => add(const WalletConnectEvent.listener()));
    //
    w3mService.onModalConnect
        .unsubscribe((args) => add(WalletConnectEvent.modalConnect(args)));
    w3mService.onModalDisconnect
        .unsubscribe((args) => add(WalletConnectEvent.modalDisconnect(args)));
    w3mService.onModalError
        .unsubscribe((args) => add(WalletConnectEvent.modalError(args)));
    //
    w3mService.onSessionExpireEvent.unsubscribe(
        (args) => add(WalletConnectEvent.sessionExpireEvent(args)));
    w3mService.onSessionUpdateEvent.unsubscribe(
        (args) => add(WalletConnectEvent.sessionUpdateEvent(args)));
    w3mService.onSessionEventEvent
        .unsubscribe((args) => add(WalletConnectEvent.sessionEventEvent(args)));

    return super.close();
  }
}

final _bscTesNetChain = W3MChainInfo(
  chainName: 'Binance Smart Chain Testnet',
  namespace: 'eip155:97',
  chainId: '97',
  tokenName: 'BNB',
  rpcUrl: 'https://bsc-testnet-rpc.publicnode.com',
  chainIcon: W3MChainPresets.chainImagesId['56'],
  blockExplorer: W3MBlockExplorer(
    name: 'Binance Smart Chain Testnet Explorer',
    url: 'https://testnet.bscscan.com',
  ),
);
