part of 'characters_screen_bloc.dart';

@freezed
class CharactersScreenEvent with _$CharactersScreenEvent {
  const factory CharactersScreenEvent.fetchData({required int pages}) =
      _FetchDataEvent;

  const factory CharactersScreenEvent.loadMore({
    required int pages,
    @Default('') String name,
    StatusType? status,
    GenderType? gender,
  }) = _LoadMoreEvent;

  const factory CharactersScreenEvent.search({
    @Default('') String name,
    StatusType? status,
    GenderType? gender,
  }) = _SearchEvent;
}
