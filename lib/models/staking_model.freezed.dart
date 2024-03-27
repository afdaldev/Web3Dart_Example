// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakingModel {
  String? get maxCap => throw _privateConstructorUsedError;
  String? get lockedPeriod => throw _privateConstructorUsedError;
  String? get apy => throw _privateConstructorUsedError;
  String? get rewardPercent => throw _privateConstructorUsedError;
  String? get totalStaked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakingModelCopyWith<StakingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingModelCopyWith<$Res> {
  factory $StakingModelCopyWith(
          StakingModel value, $Res Function(StakingModel) then) =
      _$StakingModelCopyWithImpl<$Res, StakingModel>;
  @useResult
  $Res call(
      {String? maxCap,
      String? lockedPeriod,
      String? apy,
      String? rewardPercent,
      String? totalStaked});
}

/// @nodoc
class _$StakingModelCopyWithImpl<$Res, $Val extends StakingModel>
    implements $StakingModelCopyWith<$Res> {
  _$StakingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCap = freezed,
    Object? lockedPeriod = freezed,
    Object? apy = freezed,
    Object? rewardPercent = freezed,
    Object? totalStaked = freezed,
  }) {
    return _then(_value.copyWith(
      maxCap: freezed == maxCap
          ? _value.maxCap
          : maxCap // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedPeriod: freezed == lockedPeriod
          ? _value.lockedPeriod
          : lockedPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      apy: freezed == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as String?,
      rewardPercent: freezed == rewardPercent
          ? _value.rewardPercent
          : rewardPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStaked: freezed == totalStaked
          ? _value.totalStaked
          : totalStaked // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakingModelImplCopyWith<$Res>
    implements $StakingModelCopyWith<$Res> {
  factory _$$StakingModelImplCopyWith(
          _$StakingModelImpl value, $Res Function(_$StakingModelImpl) then) =
      __$$StakingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? maxCap,
      String? lockedPeriod,
      String? apy,
      String? rewardPercent,
      String? totalStaked});
}

/// @nodoc
class __$$StakingModelImplCopyWithImpl<$Res>
    extends _$StakingModelCopyWithImpl<$Res, _$StakingModelImpl>
    implements _$$StakingModelImplCopyWith<$Res> {
  __$$StakingModelImplCopyWithImpl(
      _$StakingModelImpl _value, $Res Function(_$StakingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCap = freezed,
    Object? lockedPeriod = freezed,
    Object? apy = freezed,
    Object? rewardPercent = freezed,
    Object? totalStaked = freezed,
  }) {
    return _then(_$StakingModelImpl(
      maxCap: freezed == maxCap
          ? _value.maxCap
          : maxCap // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedPeriod: freezed == lockedPeriod
          ? _value.lockedPeriod
          : lockedPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      apy: freezed == apy
          ? _value.apy
          : apy // ignore: cast_nullable_to_non_nullable
              as String?,
      rewardPercent: freezed == rewardPercent
          ? _value.rewardPercent
          : rewardPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStaked: freezed == totalStaked
          ? _value.totalStaked
          : totalStaked // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StakingModelImpl implements _StakingModel {
  const _$StakingModelImpl(
      {this.maxCap,
      this.lockedPeriod,
      this.apy,
      this.rewardPercent,
      this.totalStaked});

  @override
  final String? maxCap;
  @override
  final String? lockedPeriod;
  @override
  final String? apy;
  @override
  final String? rewardPercent;
  @override
  final String? totalStaked;

  @override
  String toString() {
    return 'StakingModel(maxCap: $maxCap, lockedPeriod: $lockedPeriod, apy: $apy, rewardPercent: $rewardPercent, totalStaked: $totalStaked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakingModelImpl &&
            (identical(other.maxCap, maxCap) || other.maxCap == maxCap) &&
            (identical(other.lockedPeriod, lockedPeriod) ||
                other.lockedPeriod == lockedPeriod) &&
            (identical(other.apy, apy) || other.apy == apy) &&
            (identical(other.rewardPercent, rewardPercent) ||
                other.rewardPercent == rewardPercent) &&
            (identical(other.totalStaked, totalStaked) ||
                other.totalStaked == totalStaked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, maxCap, lockedPeriod, apy, rewardPercent, totalStaked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakingModelImplCopyWith<_$StakingModelImpl> get copyWith =>
      __$$StakingModelImplCopyWithImpl<_$StakingModelImpl>(this, _$identity);
}

abstract class _StakingModel implements StakingModel {
  const factory _StakingModel(
      {final String? maxCap,
      final String? lockedPeriod,
      final String? apy,
      final String? rewardPercent,
      final String? totalStaked}) = _$StakingModelImpl;

  @override
  String? get maxCap;
  @override
  String? get lockedPeriod;
  @override
  String? get apy;
  @override
  String? get rewardPercent;
  @override
  String? get totalStaked;
  @override
  @JsonKey(ignore: true)
  _$$StakingModelImplCopyWith<_$StakingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
