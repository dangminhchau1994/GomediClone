import 'package:app/infrastructure/network/dio/dio_client.dart';
import 'package:dio/dio.dart';

import 'endpoints.dart';

class AuthenticateApi {
  final DioClient dioClient;

  AuthenticateApi({required this.dioClient});

  Future<Response?>? authenticate(
    String username,
    String password,
  ) async {
    try {
      final Response response = await dioClient.post(
        Endpoints.authenticate,
        data: {
          'username': username,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
