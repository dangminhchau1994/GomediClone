import 'package:app/infrastructure/network/api/drug_api.dart';
import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:app/infrastructure/network/dio/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'authenticate_api_test.mocks.dart';

@GenerateMocks([DioClient])
void main() {
  group(
    'drug api',
    () {
      test(
        'return drug data when call api successfully',
        () async {
          final client = MockDioClient();

          when(
            client.get(
              Endpoints.getDrugs,
              queryParameters: {
                'shortName': 'Cal',
              },
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              statusCode: 200,
            ),
          );

          expect(
            await DrugApi(dioClient: client).searchDrug('Cal'),
            isA<Response<dynamic>>(),
          );
        },
      );

      test(
        'throw exception when call api failed',
        () async {
          final client = MockDioClient();

          when(
            client.get(
              Endpoints.getDrugs,
              queryParameters: {
                'shortName': 'Cal',
              },
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              statusCode: 400,
            ),
          );

          expect(
            await DrugApi(dioClient: client).searchDrug('Cal'),
            null,
          );
        },
      );
    },
  );
}
