part of 'staking_bloc.dart';

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(
    when: true,
    whenOrNull: false,
    maybeWhen: false,
  ),
)
class StakingState with _$StakingState {
  const factory StakingState({
    @Default(false) final bool isLoading,
    final StakingModel? staking,
  }) = _StakingState;
}
