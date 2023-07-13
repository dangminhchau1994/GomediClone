import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:app/infrastructure/network/dio/dio_client.dart';
import 'package:dio/dio.dart';

class UserApi {
  final DioClient? dioClient;

  UserApi({required this.dioClient});

  Future<Response?>? getProfiles(int profilePermission) async {
    try {
      final response = await dioClient?.get(
        Endpoints.profile,
        queryParameters: {
          'profilePermissionId': profilePermission,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
