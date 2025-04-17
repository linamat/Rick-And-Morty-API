import 'package:rick_and_morty/core/di/dependency_injection.dart';
import 'package:rick_and_morty/data/characters/services/characters_api_service.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_screen_bloc.dart';

class PresentationDI {
  static void init() {
    getIt.registerSingleton<CharactersScreenBloc>(
        CharactersScreenBloc(apiService: getIt<CharactersApiService>()));
  }
}
