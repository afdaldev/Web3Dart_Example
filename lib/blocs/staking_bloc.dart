import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web3dart_example/models/staking_model.dart';
import 'package:http/http.dart' as http;

part 'staking_event.dart';

part 'staking_state.dart';

part 'staking_bloc.freezed.dart';

Web3Client getWeb3Client() => Web3Client(
      'https://data-seed-prebsc-1-s1.binance.org:8545',
      http.Client(),
    );

class StakingBloc extends Bloc<StakingEvent, StakingState> {
  StakingBloc() : super(const _StakingState()) {
    on<StakingEvent>(
      (event, emit) async {
        await event.when(
          getStaking: () async {
            emit(state.copyWith(isLoading: true));

            final abiCode = await rootBundle.loadString(
              'assets/abi/ISOMAStakingTestNet.abi.json',
            );

            final deployedContract = DeployedContract(
              ContractAbi.fromJson(
                abiCode,
                'ISOMAStaking',
              ),
              EthereumAddress.fromHex(
                '0x89E0633eA38CD3539A69A9f88F410A3133f61cF1',
              ),
            );

            final pools = await getWeb3Client().call(
              contract: deployedContract,
              function: deployedContract.function(
                'pools',
              ),
              params: [
                BigInt.from(0),
              ],
            );

            add(
              StakingEvent.emitStaking(
                StakingModel(
                  maxCap: (cast<BigInt>(pools[0])).castToEither(
                    EtherUnit.gwei,
                  ),
                  lockedPeriod: (cast<BigInt>(pools[1])).castToString,
                  apy:
                      (cast<BigInt>(pools[2])).castToPercent.removeTrailingZero,
                  rewardPercent:
                      (cast<BigInt>(pools[3])).castToPercent.removeTrailingZero,
                  totalStaked: (cast<BigInt>(pools[4])).castToEither(
                    EtherUnit.gwei,
                  ),
                ),
              ),
            );
          },
          emitStaking: (StakingModel staking) {
            emit(state.copyWith(isLoading: false, staking: staking));
          },
        );
      },
    );
  }
}

extension BigIntCastExtension on BigInt {
  String get castToString => toString();

  String get castToPercent => (this / BigInt.from(100)).toString();

  String castToEither(EtherUnit unit) {
    final data = EtherAmount.fromBigInt(
      unit,
      this,
    ).getInEther;

    return data.toString();
  }
}

extension StringExtension on String {
  String get removeTrailingZero {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

    return replaceAll(regex, '');
  }
}
