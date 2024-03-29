// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_connect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletConnectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$ListenerEventImpl implements _ListenerEvent {
  const _$ListenerEventImpl();

  @override
  String toString() {
    return 'WalletConnectEvent.listener()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return listener();
  }
}

abstract class _ListenerEvent implements WalletConnectEvent {
  const factory _ListenerEvent() = _$ListenerEventImpl;
}

/// @nodoc

class _$ModalConnectEventImpl implements _ModalConnectEvent {
  const _$ModalConnectEventImpl(this.event);

  @override
  final ModalConnect? event;

  @override
  String toString() {
    return 'WalletConnectEvent.modalConnect(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModalConnectEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return modalConnect(event);
  }
}

abstract class _ModalConnectEvent implements WalletConnectEvent {
  const factory _ModalConnectEvent(final ModalConnect? event) =
      _$ModalConnectEventImpl;

  ModalConnect? get event;
}

/// @nodoc

class _$ModalDisconnectEventImpl implements _ModalDisconnectEvent {
  const _$ModalDisconnectEventImpl(this.event);

  @override
  final ModalDisconnect? event;

  @override
  String toString() {
    return 'WalletConnectEvent.modalDisconnect(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModalDisconnectEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return modalDisconnect(event);
  }
}

abstract class _ModalDisconnectEvent implements WalletConnectEvent {
  const factory _ModalDisconnectEvent(final ModalDisconnect? event) =
      _$ModalDisconnectEventImpl;

  ModalDisconnect? get event;
}

/// @nodoc

class _$ModalErrorEventImpl implements _ModalErrorEvent {
  const _$ModalErrorEventImpl(this.event);

  @override
  final ModalError? event;

  @override
  String toString() {
    return 'WalletConnectEvent.modalError(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModalErrorEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return modalError(event);
  }
}

abstract class _ModalErrorEvent implements WalletConnectEvent {
  const factory _ModalErrorEvent(final ModalError? event) =
      _$ModalErrorEventImpl;

  ModalError? get event;
}

/// @nodoc

class _$SessionExpireEventEventImpl implements _SessionExpireEventEvent {
  const _$SessionExpireEventEventImpl(this.event);

  @override
  final SessionExpire? event;

  @override
  String toString() {
    return 'WalletConnectEvent.sessionExpireEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionExpireEventEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return sessionExpireEvent(event);
  }
}

abstract class _SessionExpireEventEvent implements WalletConnectEvent {
  const factory _SessionExpireEventEvent(final SessionExpire? event) =
      _$SessionExpireEventEventImpl;

  SessionExpire? get event;
}

/// @nodoc

class _$SessionUpdateEventEventImpl implements _SessionUpdateEventEvent {
  const _$SessionUpdateEventEventImpl(this.event);

  @override
  final SessionUpdate? event;

  @override
  String toString() {
    return 'WalletConnectEvent.sessionUpdateEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionUpdateEventEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return sessionUpdateEvent(event);
  }
}

abstract class _SessionUpdateEventEvent implements WalletConnectEvent {
  const factory _SessionUpdateEventEvent(final SessionUpdate? event) =
      _$SessionUpdateEventEventImpl;

  SessionUpdate? get event;
}

/// @nodoc

class _$SessionEventEventEventImpl implements _SessionEventEventEvent {
  const _$SessionEventEventEventImpl(this.event);

  @override
  final SessionEvent? event;

  @override
  String toString() {
    return 'WalletConnectEvent.sessionEventEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEventEventEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listener,
    required TResult Function(ModalConnect? event) modalConnect,
    required TResult Function(ModalDisconnect? event) modalDisconnect,
    required TResult Function(ModalError? event) modalError,
    required TResult Function(SessionExpire? event) sessionExpireEvent,
    required TResult Function(SessionUpdate? event) sessionUpdateEvent,
    required TResult Function(SessionEvent? event) sessionEventEvent,
  }) {
    return sessionEventEvent(event);
  }
}

abstract class _SessionEventEventEvent implements WalletConnectEvent {
  const factory _SessionEventEventEvent(final SessionEvent? event) =
      _$SessionEventEventEventImpl;

  SessionEvent? get event;
}

/// @nodoc
mixin _$WalletConnectState {
  bool get isConnect => throw _privateConstructorUsedError;
  String? get chain => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isConnect, String? chain) $default,
  ) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletConnectStateCopyWith<WalletConnectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectStateCopyWith<$Res> {
  factory $WalletConnectStateCopyWith(
          WalletConnectState value, $Res Function(WalletConnectState) then) =
      _$WalletConnectStateCopyWithImpl<$Res, WalletConnectState>;
  @useResult
  $Res call({bool isConnect, String? chain});
}

/// @nodoc
class _$WalletConnectStateCopyWithImpl<$Res, $Val extends WalletConnectState>
    implements $WalletConnectStateCopyWith<$Res> {
  _$WalletConnectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnect = null,
    Object? chain = freezed,
  }) {
    return _then(_value.copyWith(
      isConnect: null == isConnect
          ? _value.isConnect
          : isConnect // ignore: cast_nullable_to_non_nullable
              as bool,
      chain: freezed == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletConnectStateImplCopyWith<$Res>
    implements $WalletConnectStateCopyWith<$Res> {
  factory _$$WalletConnectStateImplCopyWith(_$WalletConnectStateImpl value,
          $Res Function(_$WalletConnectStateImpl) then) =
      __$$WalletConnectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnect, String? chain});
}

/// @nodoc
class __$$WalletConnectStateImplCopyWithImpl<$Res>
    extends _$WalletConnectStateCopyWithImpl<$Res, _$WalletConnectStateImpl>
    implements _$$WalletConnectStateImplCopyWith<$Res> {
  __$$WalletConnectStateImplCopyWithImpl(_$WalletConnectStateImpl _value,
      $Res Function(_$WalletConnectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnect = null,
    Object? chain = freezed,
  }) {
    return _then(_$WalletConnectStateImpl(
      isConnect: null == isConnect
          ? _value.isConnect
          : isConnect // ignore: cast_nullable_to_non_nullable
              as bool,
      chain: freezed == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WalletConnectStateImpl implements _WalletConnectState {
  const _$WalletConnectStateImpl({this.isConnect = false, this.chain});

  @override
  @JsonKey()
  final bool isConnect;
  @override
  final String? chain;

  @override
  String toString() {
    return 'WalletConnectState(isConnect: $isConnect, chain: $chain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletConnectStateImpl &&
            (identical(other.isConnect, isConnect) ||
                other.isConnect == isConnect) &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnect, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletConnectStateImplCopyWith<_$WalletConnectStateImpl> get copyWith =>
      __$$WalletConnectStateImplCopyWithImpl<_$WalletConnectStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isConnect, String? chain) $default,
  ) {
    return $default(isConnect, chain);
  }
}

abstract class _WalletConnectState implements WalletConnectState {
  const factory _WalletConnectState(
      {final bool isConnect, final String? chain}) = _$WalletConnectStateImpl;

  @override
  bool get isConnect;
  @override
  String? get chain;
  @override
  @JsonKey(ignore: true)
  _$$WalletConnectStateImplCopyWith<_$WalletConnectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
