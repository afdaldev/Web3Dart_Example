// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaking,
    required TResult Function(StakingModel staking) emitStaking,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$GetStakingEventImpl implements _GetStakingEvent {
  const _$GetStakingEventImpl();

  @override
  String toString() {
    return 'StakingEvent.getStaking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStakingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaking,
    required TResult Function(StakingModel staking) emitStaking,
  }) {
    return getStaking();
  }
}

abstract class _GetStakingEvent implements StakingEvent {
  const factory _GetStakingEvent() = _$GetStakingEventImpl;
}

/// @nodoc

class _$EmitStakingEventImpl implements _EmitStakingEvent {
  const _$EmitStakingEventImpl(this.staking);

  @override
  final StakingModel staking;

  @override
  String toString() {
    return 'StakingEvent.emitStaking(staking: $staking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitStakingEventImpl &&
            (identical(other.staking, staking) || other.staking == staking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, staking);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaking,
    required TResult Function(StakingModel staking) emitStaking,
  }) {
    return emitStaking(staking);
  }
}

abstract class _EmitStakingEvent implements StakingEvent {
  const factory _EmitStakingEvent(final StakingModel staking) =
      _$EmitStakingEventImpl;

  StakingModel get staking;
}

/// @nodoc
mixin _$StakingState {
  bool get isLoading => throw _privateConstructorUsedError;
  StakingModel? get staking => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, StakingModel? staking) $default,
  ) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakingStateCopyWith<StakingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingStateCopyWith<$Res> {
  factory $StakingStateCopyWith(
          StakingState value, $Res Function(StakingState) then) =
      _$StakingStateCopyWithImpl<$Res, StakingState>;
  @useResult
  $Res call({bool isLoading, StakingModel? staking});

  $StakingModelCopyWith<$Res>? get staking;
}

/// @nodoc
class _$StakingStateCopyWithImpl<$Res, $Val extends StakingState>
    implements $StakingStateCopyWith<$Res> {
  _$StakingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? staking = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      staking: freezed == staking
          ? _value.staking
          : staking // ignore: cast_nullable_to_non_nullable
              as StakingModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StakingModelCopyWith<$Res>? get staking {
    if (_value.staking == null) {
      return null;
    }

    return $StakingModelCopyWith<$Res>(_value.staking!, (value) {
      return _then(_value.copyWith(staking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StakingStateImplCopyWith<$Res>
    implements $StakingStateCopyWith<$Res> {
  factory _$$StakingStateImplCopyWith(
          _$StakingStateImpl value, $Res Function(_$StakingStateImpl) then) =
      __$$StakingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, StakingModel? staking});

  @override
  $StakingModelCopyWith<$Res>? get staking;
}

/// @nodoc
class __$$StakingStateImplCopyWithImpl<$Res>
    extends _$StakingStateCopyWithImpl<$Res, _$StakingStateImpl>
    implements _$$StakingStateImplCopyWith<$Res> {
  __$$StakingStateImplCopyWithImpl(
      _$StakingStateImpl _value, $Res Function(_$StakingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? staking = freezed,
  }) {
    return _then(_$StakingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      staking: freezed == staking
          ? _value.staking
          : staking // ignore: cast_nullable_to_non_nullable
              as StakingModel?,
    ));
  }
}

/// @nodoc

class _$StakingStateImpl implements _StakingState {
  const _$StakingStateImpl({this.isLoading = false, this.staking});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final StakingModel? staking;

  @override
  String toString() {
    return 'StakingState(isLoading: $isLoading, staking: $staking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.staking, staking) || other.staking == staking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, staking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingStateImplCopyWith<_$StakingStateImpl> get copyWith =>
      __$$StakingStateImplCopyWithImpl<_$StakingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, StakingModel? staking) $default,
  ) {
    return $default(isLoading, staking);
  }
}

abstract class _StakingState implements StakingState {
  const factory _StakingState(
      {final bool isLoading, final StakingModel? staking}) = _$StakingStateImpl;

  @override
  bool get isLoading;
  @override
  StakingModel? get staking;
  @override
  @JsonKey(ignore: true)
  _$$StakingStateImplCopyWith<_$StakingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
