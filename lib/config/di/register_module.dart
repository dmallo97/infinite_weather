import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:infinite_weather/config/config_params.dart';
import 'package:infinite_weather/core/interceptors/auth_interceptor.dart';
import 'package:infinite_weather/core/interceptors/logger_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> sharedPreferences() => SharedPreferences.getInstance();

  @Named('accuWeatherDataService')
  Dio getDioClient() {
    final dioClient = Dio(ConfigurationParameters.dioAccuWeatherClientBaseOptionsConfig);

    dioClient.options.validateStatus = (status) {
      return status! < 512;
    };

    (dioClient.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };

    dioClient.interceptors.addAll([
      LoggerInterceptor(),
      AuthInterceptor(),
    ]);
    return dioClient;
  }
}
