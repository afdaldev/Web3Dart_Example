part of 'wallet_connect_bloc.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions(
    when: true,
    whenOrNull: false,
    maybeWhen: false,
  ),
)
class WalletConnectEvent with _$WalletConnectEvent {
  const factory WalletConnectEvent.listener() = _ListenerEvent;

  const factory WalletConnectEvent.modalConnect(
    ModalConnect? event,
  ) = _ModalConnectEvent;

  const factory WalletConnectEvent.modalDisconnect(
    ModalDisconnect? event,
  ) = _ModalDisconnectEvent;

  const factory WalletConnectEvent.modalError(
    ModalError? event,
  ) = _ModalErrorEvent;

  const factory WalletConnectEvent.sessionExpireEvent(
    SessionExpire? event,
  ) = _SessionExpireEventEvent;

  const factory WalletConnectEvent.sessionUpdateEvent(
    SessionUpdate? event,
  ) = _SessionUpdateEventEvent;

  const factory WalletConnectEvent.sessionEventEvent(
    SessionEvent? event,
  ) = _SessionEventEventEvent;
}
