part of 'wallet_connect_bloc.dart';

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(
    when: true,
    whenOrNull: false,
    maybeWhen: false,
  ),
)
class WalletConnectState with _$WalletConnectState {
  const factory WalletConnectState({
    @Default(false) bool isConnect,
    String? chain,
  }) = _WalletConnectState;
}
