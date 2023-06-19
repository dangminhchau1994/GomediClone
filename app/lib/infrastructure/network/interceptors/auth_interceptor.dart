import 'package:app/application/constants/route_names.dart';
import 'package:app/application/constants/string_constanst.dart';
import 'package:app/application/utils/share_preferences.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final GlobalKey<NavigatorState> navigatorKey;

  AuthInterceptor(this.dio, this.navigatorKey);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    if (err.response?.statusCode == 401) {
      SharePref().removeToken(StringConstants.token);
      navigatorKey.currentContext?.go(RouteNames.login);
    }
  }

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
