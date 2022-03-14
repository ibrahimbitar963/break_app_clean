import 'package:break_app_clean/features/breaking_character/data/reposiories/character_repository_impl.dart';
import 'package:break_app_clean/features/breaking_character/domain/repositories/characters_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:break_app_clean/core/const/strings.dart';
import 'features/breaking_character/presentation/bloc/charachters_cubit.dart';
import 'features/breaking_character/presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepository characterRepo;
  // late QuoteRepo quoteRepo;
  late CharachtersCubit charactersCubit;
  AppRouter() {
    characterRepo = CharactersRepository(CharactersWebServices());
    //quoteRepo = QuoteRepo(CharactersWebServices());
    charactersCubit = CharachtersCubit(characterRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CharacterScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );
    }
  }
}
