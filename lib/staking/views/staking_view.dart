import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web3dart_example/staking/blocs/staking_bloc.dart';

class StakingView extends StatelessWidget {
  const StakingView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StakingBloc>().add(const StakingEvent.getStaking());

    return BlocBuilder<StakingBloc, StakingState>(
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
    );
  }
}
