part of 'staking_bloc.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(
    when: true,
    whenOrNull: false,
    maybeWhen: false,
  ),
)
class StakingEvent with _$StakingEvent {
  const factory StakingEvent.getStaking() = _GetStakingEvent;

  const factory StakingEvent.emitStaking(StakingModel staking) =
      _EmitStakingEvent;
}
