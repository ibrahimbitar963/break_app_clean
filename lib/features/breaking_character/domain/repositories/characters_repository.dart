
import 'package:break_app_clean/core/error/failures.dart';
import 'package:break_app_clean/features/breaking_character/domain/entites/character.dart';
import 'package:dartz/dartz.dart';

abstract class CharactersRepository{

Future<Either<Failure, List<Character>>> getAllCharacters();
}