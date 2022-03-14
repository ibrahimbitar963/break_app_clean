


import 'package:break_app_clean/core/error/failures.dart';
import 'package:break_app_clean/core/usecases/usecases.dart';
import 'package:break_app_clean/features/breaking_character/domain/entites/character.dart';
import 'package:break_app_clean/features/breaking_character/domain/repositories/characters_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllCharacter implements UseCase<List<Character>, NoParams> {
  final CharactersRepository repository;

  GetAllCharacter(this.repository);

  @override
  Future<Either<Failure, List<Character>>> call(NoParams params) async {
    return await repository.getAllCharacters();
  }
}
