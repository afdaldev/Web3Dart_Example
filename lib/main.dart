import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web3dart_example/staking/blocs/staking_bloc.dart';
import 'package:web3dart_example/staking/views/staking_view.dart';
import 'package:web3dart_example/web3/blocs/wallet_connect_bloc.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WalletConnectBloc>(
          create: (context) => WalletConnectBloc(),
        ),
        BlocProvider<StakingBloc>(
          create: (context) => StakingBloc(
            walletConnect: BlocProvider.of<WalletConnectBloc>(context),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        home: const Web3DartView(),
      ),
    );
  }
}

class Web3DartView extends StatelessWidget {
  const Web3DartView({super.key});

  @override
  Widget build(BuildContext context) {
    final w3mService = context.watch<WalletConnectBloc>().w3mService;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<WalletConnectBloc, WalletConnectState>(
          builder: (context, state) {
            if (state.isConnect) {
              if (w3mService.selectedChain?.chainId == '56' ||
                  w3mService.selectedChain?.chainId == '97') {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const StakingView(),
                      W3MNetworkSelectButton(
                        service: w3mService,
                        size: BaseButtonSize.small,
                      ),
                    ],
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.wallet_rounded,
                      size: 48.0,
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Select Binance Smart Chain Test Net',
                    ),
                    const SizedBox(height: 8.0),
                    W3MNetworkSelectButton(
                      service: w3mService,
                      size: BaseButtonSize.small,
                    ),
                  ],
                );
              }
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.wallet_rounded,
                    size: 48.0,
                  ),
                  const SizedBox(height: 16.0),
                  Visibility(
                    visible: !state.isConnect,
                    child: W3MNetworkSelectButton(
                      service: w3mService,
                      size: BaseButtonSize.small,
                    ),
                  ),
                  Visibility(
                    visible: !state.isConnect,
                    child: W3MConnectWalletButton(
                      service: w3mService,
                      size: BaseButtonSize.small,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
