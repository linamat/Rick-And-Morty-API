import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/characters/services/characters_api_service.dart';
import 'package:rick_and_morty/presentation/characters/enums/gender_type.dart';
import 'package:rick_and_morty/presentation/characters/enums/status_type.dart';
import 'package:rick_and_morty/presentation/characters/view_models/character_card_view_model.dart';

part 'characters_screen_event.dart';
part 'characters_screen_state.dart';
part 'characters_screen_bloc.freezed.dart';

class CharactersScreenBloc
    extends Bloc<CharactersScreenEvent, CharactersScreenState> {
  final CharactersApiService _apiService;

  CharactersScreenBloc({
    required CharactersApiService apiService,
  })  : _apiService = apiService,
        super(const CharactersScreenState(isLoading: true)) {
    on<_FetchDataEvent>(_onFetchDataEvent);
    on<_LoadMoreEvent>(_onLoadMoreEvent);
    on<_SearchEvent>(_onSearchEvent);
  }

  Future<void> _onFetchDataEvent(
    _FetchDataEvent event,
    Emitter<CharactersScreenState> emit,
  ) async {
    final response = await _apiService.fetchAll(pages: event.pages);

    if (response.isFailed) {
      emit(CharactersScreenState(
        errorMessage: response.failure.debugMessage,
      ));
      return;
    }

    if (response.isSuccess) {
      final characters = response.success.results
          .map((result) => CharacterCardViewModel.fromDto(result))
          .toList();

      emit(CharactersScreenState(characterCards: characters));
    }
  }

  Future<void> _onLoadMoreEvent(
    _LoadMoreEvent event,
    Emitter<CharactersScreenState> emit,
  ) async {
    final isFiltering =
        event.name.isNotEmpty || event.status != null || event.gender != null;

    final response = isFiltering
        ? await _apiService.fetchFilteredCharacters(
            page: event.pages,
            name: event.name,
            status: event.status?.name,
            gender: event.gender?.name,
          )
        : await _apiService.fetchAll(pages: event.pages);

    if (response.isFailed) {
      emit(state.copyWith(
        errorMessage: response.failure.debugMessage,
        isLoading: false,
      ));

      return;
    }

    if (response.isSuccess) {
      final characters = response.success.results
          .map((result) => CharacterCardViewModel.fromDto(result))
          .toList();

      final updatedCharacters = [
        ...state.characterCards,
        ...characters,
      ];

      emit(CharactersScreenState(characterCards: updatedCharacters));
    }
  }

  Future<void> _onSearchEvent(
    _SearchEvent event,
    Emitter<CharactersScreenState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
    ));

    final response = await _apiService.fetchFilteredCharacters(
      page: 1,
      name: event.name,
      status: event.status?.name,
      gender: event.gender?.name,
    );

    if (response.isFailed) {
      emit(state.copyWith(
        errorMessage: response.failure.debugMessage,
        isLoading: false,
      ));

      return;
    }

    if (response.isSuccess) {
      final characters = response.success.results
          .map((result) => CharacterCardViewModel.fromDto(result))
          .toList();

      emit(CharactersScreenState(characterCards: characters));
    }
  }
}
