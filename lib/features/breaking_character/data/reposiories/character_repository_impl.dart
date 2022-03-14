import 'package:break_app_clean/core/const/integers.dart';
import 'package:break_app_clean/core/const/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices()  {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    );
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get(charactersAPI);
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());

      return [];
    }
  }
  // Future<List<dynamic>> getQuote(String charName) async {
  //   try {
  //     Response response =
  //     await dio.get('quote', queryParameters: {'author': charName});
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (e) {
  //     print(e.toString());
  //     return [];
  //   }
  // }
}
