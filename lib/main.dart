import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/di/dependency_injection.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_screen_bloc.dart';
import 'package:rick_and_morty/presentation/characters/characters_screen.dart';
import 'package:flutter/material.dart';

void main() {
  DependencyInjection.setup();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider.value(
        value: getIt<CharactersScreenBloc>()
          ..add(const CharactersScreenEvent.fetchData(pages: 1)),
        child: const CharactersScreen(),
      ),
    );
  }
}
