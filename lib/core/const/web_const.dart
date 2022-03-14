import 'package:break_app_clean/core/const/strings.dart';
import 'package:dio/dio.dart';

BaseOptions Optionss = BaseOptions(
  baseUrl: baseURL,
  receiveDataWhenStatusError: true,
  connectTimeout: 20 * 1000,
  receiveTimeout: 20 * 1000,

    );