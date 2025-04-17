// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FailureResult {
  FailureReasons get reason => throw _privateConstructorUsedError;
  String get debugMessage => throw _privateConstructorUsedError;

  /// Create a copy of FailureResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureResultCopyWith<FailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResultCopyWith<$Res> {
  factory $FailureResultCopyWith(
          FailureResult value, $Res Function(FailureResult) then) =
      _$FailureResultCopyWithImpl<$Res, FailureResult>;
  @useResult
  $Res call({FailureReasons reason, String debugMessage});
}

/// @nodoc
class _$FailureResultCopyWithImpl<$Res, $Val extends FailureResult>
    implements $FailureResultCopyWith<$Res> {
  _$FailureResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FailureResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? debugMessage = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: null == debugMessage
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureResultImplCopyWith<$Res>
    implements $FailureResultCopyWith<$Res> {
  factory _$$FailureResultImplCopyWith(
          _$FailureResultImpl value, $Res Function(_$FailureResultImpl) then) =
      __$$FailureResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FailureReasons reason, String debugMessage});
}

/// @nodoc
class __$$FailureResultImplCopyWithImpl<$Res>
    extends _$FailureResultCopyWithImpl<$Res, _$FailureResultImpl>
    implements _$$FailureResultImplCopyWith<$Res> {
  __$$FailureResultImplCopyWithImpl(
      _$FailureResultImpl _value, $Res Function(_$FailureResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FailureResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? debugMessage = null,
  }) {
    return _then(_$FailureResultImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: null == debugMessage
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureResultImpl implements _FailureResult {
  const _$FailureResultImpl({required this.reason, required this.debugMessage});

  @override
  final FailureReasons reason;
  @override
  final String debugMessage;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureResultImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.debugMessage, debugMessage) ||
                other.debugMessage == debugMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason, debugMessage);

  /// Create a copy of FailureResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureResultImplCopyWith<_$FailureResultImpl> get copyWith =>
      __$$FailureResultImplCopyWithImpl<_$FailureResultImpl>(this, _$identity);
}

abstract class _FailureResult implements FailureResult {
  const factory _FailureResult(
      {required final FailureReasons reason,
      required final String debugMessage}) = _$FailureResultImpl;

  @override
  FailureReasons get reason;
  @override
  String get debugMessage;

  /// Create a copy of FailureResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureResultImplCopyWith<_$FailureResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
