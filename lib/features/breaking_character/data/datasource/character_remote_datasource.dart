// import 'dart:convert';
//
// import 'package:break_app_clean/features/breaking_character/data/models/character_model.dart';
// import 'package:http/http.dart' as http;
//
// abstract class CharacterRemoteDataSource {
//
//
//   /// Calls the  https://www.breakingbadapi.com/api/{characters} endpoint.
//   ///get all character
//   /// Throws a [ServerException] for all error codes.
//   Future<List<dynamic>> getAllCharacters();
// }
//
// class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
//   late http.Client client;
//
//   CharacterRemoteDataSourceImpl({required this.client});
//   @override
//   Future<List<dynamic>> getAllCharacters() async {
//     print('object');
//     final response = await client.get(
//       Uri.parse('https://www.breakingbadapi.com/api/characters/'),
//       headers: {'Content-Type': 'application/json'},
//     );
//
//     if (response.statusCode == 200) {
//       List<CharacterModel> characters = new List<CharacterModel>.from(json
//           .decode(response.body)
//           .map((data) => CharacterModel.fromJson(data))).toList();
//       characters.forEach((element) {
//         print(element.nickName);
//       });
//
//       return characters;
//     } else {
//       throw Exception('Failed to load ');
//     }
//   }
//
// }
