import 'package:app/application/utils/share_preferences.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = SharePref().token;
    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }
}
