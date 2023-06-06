import 'package:app/infrastructure/models/register/register.dart';
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
    final Response response = await dioClient.post(
      Endpoints.authenticate,
      data: {
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load token');
    }
  }

  Future<Response?>? register(Register request) async {
    try {
      final Response response = await dioClient.post(
        Endpoints.regiter,
        data: request.toJson(),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
