import 'package:freezed_annotation/freezed_annotation.dart';

part 'staking_model.freezed.dart';

@Freezed(
  fromJson: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
class StakingModel with _$StakingModel {
  const factory StakingModel({
    final String? maxCap,
    final String? lockedPeriod,
    final String? apy,
    final String? rewardPercent,
    final String? totalStaked,
  }) = _StakingModel;
}
