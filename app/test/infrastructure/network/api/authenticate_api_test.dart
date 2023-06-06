import 'package:app/infrastructure/network/api/authenticate_api.dart';
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
    'authentication',
    () {
      test(
        'return data if network call successfully',
        () async {
          final client = MockDioClient();

          when(
            client.post(
              Endpoints.authenticate,
              data: {
                'username': 'dangminhchau0105@gmail.com',
                'password': 'Chau1994@',
              },
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              statusCode: 200,
            ),
          );

          expect(
            await AuthenticateApi(dioClient: client).authenticate(
              'dangminhchau0105@gmail.com',
              'Chau1994@',
            ),
            isA<Response<dynamic>>(),
          );
        },
      );

      test(
        'throw exception if network call unsuccessfully',
        () async {
          final client = MockDioClient();

          when(
            client.post(
              Endpoints.authenticate,
              data: {
                'username': 'dangminhchau0105@gmail.com',
                'password': 'Chau1994@',
              },
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              statusCode: 404,
              statusMessage: 'Not Found',
            ),
          );

          expect(
            AuthenticateApi(dioClient: client).authenticate(
              'dangminhchau0105@gmail.com',
              'Chau1994@',
            ),
            throwsException,
          );
        },
      );
    },
  );
}
