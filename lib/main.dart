import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web3dart_example/blocs/staking_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StakingBloc>(
      create: (context) => StakingBloc(),
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
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<StakingBloc, StakingState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(),
              );
            } else if (!state.isLoading && state.staking != null) {
              return Column(
                children: [
                  Text('Max Cap : ${state.staking?.maxCap}'),
                  Text('Locked Period : ${state.staking?.lockedPeriod}'),
                  Text('Total Staked : ${state.staking?.totalStaked}'),
                  Text('APY : ${state.staking?.apy}'),
                ],
              );
            } else {
              return ElevatedButton(
                onPressed: () => context
                    .read<StakingBloc>()
                    .add(const StakingEvent.getStaking()),
                child: const Text(
                  'Fetch',
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
