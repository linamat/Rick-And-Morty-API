// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pages) fetchData,
    required TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)
        loadMore,
    required TResult Function(
            String name, StatusType? status, GenderType? gender)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pages)? fetchData,
    TResult? Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult? Function(String name, StatusType? status, GenderType? gender)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pages)? fetchData,
    TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult Function(String name, StatusType? status, GenderType? gender)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersScreenEventCopyWith<$Res> {
  factory $CharactersScreenEventCopyWith(CharactersScreenEvent value,
          $Res Function(CharactersScreenEvent) then) =
      _$CharactersScreenEventCopyWithImpl<$Res, CharactersScreenEvent>;
}

/// @nodoc
class _$CharactersScreenEventCopyWithImpl<$Res,
        $Val extends CharactersScreenEvent>
    implements $CharactersScreenEventCopyWith<$Res> {
  _$CharactersScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDataEventImplCopyWith<$Res> {
  factory _$$FetchDataEventImplCopyWith(_$FetchDataEventImpl value,
          $Res Function(_$FetchDataEventImpl) then) =
      __$$FetchDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pages});
}

/// @nodoc
class __$$FetchDataEventImplCopyWithImpl<$Res>
    extends _$CharactersScreenEventCopyWithImpl<$Res, _$FetchDataEventImpl>
    implements _$$FetchDataEventImplCopyWith<$Res> {
  __$$FetchDataEventImplCopyWithImpl(
      _$FetchDataEventImpl _value, $Res Function(_$FetchDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_$FetchDataEventImpl(
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchDataEventImpl implements _FetchDataEvent {
  const _$FetchDataEventImpl({required this.pages});

  @override
  final int pages;

  @override
  String toString() {
    return 'CharactersScreenEvent.fetchData(pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataEventImpl &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pages);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataEventImplCopyWith<_$FetchDataEventImpl> get copyWith =>
      __$$FetchDataEventImplCopyWithImpl<_$FetchDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pages) fetchData,
    required TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)
        loadMore,
    required TResult Function(
            String name, StatusType? status, GenderType? gender)
        search,
  }) {
    return fetchData(pages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pages)? fetchData,
    TResult? Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult? Function(String name, StatusType? status, GenderType? gender)?
        search,
  }) {
    return fetchData?.call(pages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pages)? fetchData,
    TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult Function(String name, StatusType? status, GenderType? gender)?
        search,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(pages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SearchEvent value) search,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchDataEvent implements CharactersScreenEvent {
  const factory _FetchDataEvent({required final int pages}) =
      _$FetchDataEventImpl;

  int get pages;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataEventImplCopyWith<_$FetchDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<$Res> {
  factory _$$LoadMoreEventImplCopyWith(
          _$LoadMoreEventImpl value, $Res Function(_$LoadMoreEventImpl) then) =
      __$$LoadMoreEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pages, String name, StatusType? status, GenderType? gender});
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<$Res>
    extends _$CharactersScreenEventCopyWithImpl<$Res, _$LoadMoreEventImpl>
    implements _$$LoadMoreEventImplCopyWith<$Res> {
  __$$LoadMoreEventImplCopyWithImpl(
      _$LoadMoreEventImpl _value, $Res Function(_$LoadMoreEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
    Object? name = null,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$LoadMoreEventImpl(
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType?,
    ));
  }
}

/// @nodoc

class _$LoadMoreEventImpl implements _LoadMoreEvent {
  const _$LoadMoreEventImpl(
      {required this.pages, this.name = '', this.status, this.gender});

  @override
  final int pages;
  @override
  @JsonKey()
  final String name;
  @override
  final StatusType? status;
  @override
  final GenderType? gender;

  @override
  String toString() {
    return 'CharactersScreenEvent.loadMore(pages: $pages, name: $name, status: $status, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreEventImpl &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pages, name, status, gender);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreEventImplCopyWith<_$LoadMoreEventImpl> get copyWith =>
      __$$LoadMoreEventImplCopyWithImpl<_$LoadMoreEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pages) fetchData,
    required TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)
        loadMore,
    required TResult Function(
            String name, StatusType? status, GenderType? gender)
        search,
  }) {
    return loadMore(pages, name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pages)? fetchData,
    TResult? Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult? Function(String name, StatusType? status, GenderType? gender)?
        search,
  }) {
    return loadMore?.call(pages, name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pages)? fetchData,
    TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult Function(String name, StatusType? status, GenderType? gender)?
        search,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(pages, name, status, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SearchEvent value) search,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements CharactersScreenEvent {
  const factory _LoadMoreEvent(
      {required final int pages,
      final String name,
      final StatusType? status,
      final GenderType? gender}) = _$LoadMoreEventImpl;

  int get pages;
  String get name;
  StatusType? get status;
  GenderType? get gender;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreEventImplCopyWith<_$LoadMoreEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, StatusType? status, GenderType? gender});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$CharactersScreenEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$SearchEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType?,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements _SearchEvent {
  const _$SearchEventImpl({this.name = '', this.status, this.gender});

  @override
  @JsonKey()
  final String name;
  @override
  final StatusType? status;
  @override
  final GenderType? gender;

  @override
  String toString() {
    return 'CharactersScreenEvent.search(name: $name, status: $status, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, status, gender);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pages) fetchData,
    required TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)
        loadMore,
    required TResult Function(
            String name, StatusType? status, GenderType? gender)
        search,
  }) {
    return search(name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pages)? fetchData,
    TResult? Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult? Function(String name, StatusType? status, GenderType? gender)?
        search,
  }) {
    return search?.call(name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pages)? fetchData,
    TResult Function(
            int pages, String name, StatusType? status, GenderType? gender)?
        loadMore,
    TResult Function(String name, StatusType? status, GenderType? gender)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name, status, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements CharactersScreenEvent {
  const factory _SearchEvent(
      {final String name,
      final StatusType? status,
      final GenderType? gender}) = _$SearchEventImpl;

  String get name;
  StatusType? get status;
  GenderType? get gender;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersScreenState {
  List<CharacterCardViewModel> get characterCards =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersScreenStateCopyWith<CharactersScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersScreenStateCopyWith<$Res> {
  factory $CharactersScreenStateCopyWith(CharactersScreenState value,
          $Res Function(CharactersScreenState) then) =
      _$CharactersScreenStateCopyWithImpl<$Res, CharactersScreenState>;
  @useResult
  $Res call(
      {List<CharacterCardViewModel> characterCards,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$CharactersScreenStateCopyWithImpl<$Res,
        $Val extends CharactersScreenState>
    implements $CharactersScreenStateCopyWith<$Res> {
  _$CharactersScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterCards = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      characterCards: null == characterCards
          ? _value.characterCards
          : characterCards // ignore: cast_nullable_to_non_nullable
              as List<CharacterCardViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersScreenStateImplCopyWith<$Res>
    implements $CharactersScreenStateCopyWith<$Res> {
  factory _$$CharactersScreenStateImplCopyWith(
          _$CharactersScreenStateImpl value,
          $Res Function(_$CharactersScreenStateImpl) then) =
      __$$CharactersScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CharacterCardViewModel> characterCards,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$CharactersScreenStateImplCopyWithImpl<$Res>
    extends _$CharactersScreenStateCopyWithImpl<$Res,
        _$CharactersScreenStateImpl>
    implements _$$CharactersScreenStateImplCopyWith<$Res> {
  __$$CharactersScreenStateImplCopyWithImpl(_$CharactersScreenStateImpl _value,
      $Res Function(_$CharactersScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterCards = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CharactersScreenStateImpl(
      characterCards: null == characterCards
          ? _value._characterCards
          : characterCards // ignore: cast_nullable_to_non_nullable
              as List<CharacterCardViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CharactersScreenStateImpl implements _CharactersScreenState {
  const _$CharactersScreenStateImpl(
      {final List<CharacterCardViewModel> characterCards = const [],
      this.isLoading = false,
      this.errorMessage})
      : _characterCards = characterCards;

  final List<CharacterCardViewModel> _characterCards;
  @override
  @JsonKey()
  List<CharacterCardViewModel> get characterCards {
    if (_characterCards is EqualUnmodifiableListView) return _characterCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterCards);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CharactersScreenState(characterCards: $characterCards, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._characterCards, _characterCards) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characterCards),
      isLoading,
      errorMessage);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersScreenStateImplCopyWith<_$CharactersScreenStateImpl>
      get copyWith => __$$CharactersScreenStateImplCopyWithImpl<
          _$CharactersScreenStateImpl>(this, _$identity);
}

abstract class _CharactersScreenState implements CharactersScreenState {
  const factory _CharactersScreenState(
      {final List<CharacterCardViewModel> characterCards,
      final bool isLoading,
      final String? errorMessage}) = _$CharactersScreenStateImpl;

  @override
  List<CharacterCardViewModel> get characterCards;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersScreenStateImplCopyWith<_$CharactersScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
