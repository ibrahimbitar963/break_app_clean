import 'package:bloc/bloc.dart';
import 'package:break_app_clean/features/breaking_character/domain/entites/character.dart';
import 'package:break_app_clean/features/breaking_character/domain/repositories/characters_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'charachters_state.dart';

      class CharachtersCubit extends Cubit<CharachtersState> {
        late CharactersRepository characterRepo;
        //late QuoteRepo quoteRepo;
         List<Character> characterss= [];
        CharachtersCubit( this.characterRepo) : super(CharachtersInitial());



        List<Character> getAllCharacter(){
          characterRepo.getAllCharacters().then((characters) {
            emit(CharachtersLoaded(characters));
            this.characterss = characters;
            return Right(characters);

          });

          return characterss;
        }

        // void getQuote(String charName){
        //
        //   quoteRepo.getQuote(charName).then((quote) {
        //     emit(QuoteLoaded(quote));
        //     print(quote.toString());
        //   },
        //   );
        // }
      }

