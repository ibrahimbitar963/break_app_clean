
import 'package:break_app_clean/core/error/failures.dart';
import 'package:break_app_clean/features/breaking_character/data/models/character_model.dart';
import 'package:break_app_clean/features/breaking_character/data/reposiories/character_repository_impl.dart';
import 'package:break_app_clean/features/breaking_character/domain/entites/character.dart';
import 'package:dartz/dartz.dart';

 class CharactersRepository{

   final CharactersWebServices charactersWebServices;

   CharactersRepository(this.charactersWebServices);

   Future<List<Character>> getAllCharacters()async{
     final characters = await charactersWebServices.getAllCharacters();
     return characters.map((character) => CharacterModel.fromJson(character)).toList();

}}