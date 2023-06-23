import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:app/infrastructure/network/dio/dio_client.dart';
import 'package:dio/dio.dart';

class DrugApi {
  final DioClient? dioClient;

  DrugApi({required this.dioClient});

  Future<Response?>? searchDrug(
    String name, {
    bool isEan = false,
  }) async {
    try {
      final response = await dioClient?.get(
        isEan ? '${Endpoints.getDrugs}/${Endpoints.ean}' : Endpoints.getDrugs,
        queryParameters: isEan ? {'ean': name} : {'shortName': name},
      );

      if (isEan) {
        response?.data = [response.data];
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response?>? drugPriorities() async {
    try {
      final response = await dioClient?.get(Endpoints.drugPriorities);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
