part of 'characters_screen_bloc.dart';

@freezed
class CharactersScreenState with _$CharactersScreenState {
  const factory CharactersScreenState({
    @Default([]) List<CharacterCardViewModel> characterCards,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CharactersScreenState;
}
