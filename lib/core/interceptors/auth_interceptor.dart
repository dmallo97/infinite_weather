import 'package:dio/dio.dart';
import 'package:infinite_weather/config/config_params.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({'apikey': ConfigurationParameters.apiKey});
    return handler.next(options);
  }
}
