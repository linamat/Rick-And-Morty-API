import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/di/dependency_injection.dart';
import 'package:rick_and_morty/data/characters/services/characters_api_service.dart';

const baseUrl = 'https://rickandmortyapi.com/api';

class DataDI {
  static void init() {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));

    getIt.registerLazySingleton<CharactersApiService>(
        () => CharactersApiService(dio));
  }
}
