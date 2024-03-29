import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web3dart_example/web3/blocs/wallet_connect_bloc.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

class WalletNativeBalanceView extends StatelessWidget {
  const WalletNativeBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletConnectBloc, WalletConnectState>(
      builder: (context, state) => Visibility(
        visible: state.isConnect,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
          ),
          child: W3MAccountButton(
            service: context.watch<WalletConnectBloc>().w3mService,
            size: BaseButtonSize.small,
          ),
        ),
      ),
    );
  }
}
