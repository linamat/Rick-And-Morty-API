// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharactersDto _$CharactersDtoFromJson(Map<String, dynamic> json) {
  return _CharactersDto.fromJson(json);
}

/// @nodoc
mixin _$CharactersDto {
  List<CharacterDto> get results => throw _privateConstructorUsedError;
  InfoDto? get info => throw _privateConstructorUsedError;

  /// Serializes this CharactersDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersDtoCopyWith<CharactersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDtoCopyWith<$Res> {
  factory $CharactersDtoCopyWith(
          CharactersDto value, $Res Function(CharactersDto) then) =
      _$CharactersDtoCopyWithImpl<$Res, CharactersDto>;
  @useResult
  $Res call({List<CharacterDto> results, InfoDto? info});

  $InfoDtoCopyWith<$Res>? get info;
}

/// @nodoc
class _$CharactersDtoCopyWithImpl<$Res, $Val extends CharactersDto>
    implements $CharactersDtoCopyWith<$Res> {
  _$CharactersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDto?,
    ) as $Val);
  }

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoDtoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoDtoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharactersDtoImplCopyWith<$Res>
    implements $CharactersDtoCopyWith<$Res> {
  factory _$$CharactersDtoImplCopyWith(
          _$CharactersDtoImpl value, $Res Function(_$CharactersDtoImpl) then) =
      __$$CharactersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterDto> results, InfoDto? info});

  @override
  $InfoDtoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$CharactersDtoImplCopyWithImpl<$Res>
    extends _$CharactersDtoCopyWithImpl<$Res, _$CharactersDtoImpl>
    implements _$$CharactersDtoImplCopyWith<$Res> {
  __$$CharactersDtoImplCopyWithImpl(
      _$CharactersDtoImpl _value, $Res Function(_$CharactersDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? info = freezed,
  }) {
    return _then(_$CharactersDtoImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersDtoImpl implements _CharactersDto {
  const _$CharactersDtoImpl(
      {final List<CharacterDto> results = const [], this.info})
      : _results = results;

  factory _$CharactersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersDtoImplFromJson(json);

  final List<CharacterDto> _results;
  @override
  @JsonKey()
  List<CharacterDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final InfoDto? info;

  @override
  String toString() {
    return 'CharactersDto(results: $results, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDtoImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), info);

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDtoImplCopyWith<_$CharactersDtoImpl> get copyWith =>
      __$$CharactersDtoImplCopyWithImpl<_$CharactersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersDtoImplToJson(
      this,
    );
  }
}

abstract class _CharactersDto implements CharactersDto {
  const factory _CharactersDto(
      {final List<CharacterDto> results,
      final InfoDto? info}) = _$CharactersDtoImpl;

  factory _CharactersDto.fromJson(Map<String, dynamic> json) =
      _$CharactersDtoImpl.fromJson;

  @override
  List<CharacterDto> get results;
  @override
  InfoDto? get info;

  /// Create a copy of CharactersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersDtoImplCopyWith<_$CharactersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
