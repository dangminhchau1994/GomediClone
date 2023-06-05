import 'package:app/infrastructure/models/token/token.dart';
import 'package:app/infrastructure/network/api/authenticate_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthenticateApi extends Mock implements AuthenticateApi {}

void main() {
  late MockAuthenticateApi mockAuthenticateApi;

  setUp(() {
    mockAuthenticateApi = MockAuthenticateApi();
  });

  group(
    'authentication',
    () {
      test('return an authenticate completes successfully', () async {
        when(
          mockAuthenticateApi.authenticate(
            'dangminhchau0105@gmail.com',
            'Chau1994@',
          ),
        ).thenAnswer(
          (_) => Future.value(
            Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
              data: {
                "id_token":
                    "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkYW5nbWluaGNoYXUwMTA1QGdtYWlsLmNvbSIsImF1dGgiOiJST0xFX1VTRVIiLCJ1c2VySWQiOjEwMzgsImV4cCI6MTUzMDU3OTY4MDQyfQ.oqstOLbHEt-FdfLy1pW9GifJ-HE_JhKAvu61NwgcoEZd4wKwSTdXJXM5fOz0lPjoVZ8a3DXT5CnWyToanBTIig"
              },
            ),
          ),
        );

        final result = await mockAuthenticateApi.authenticate(
          'dangminhchau0105@gmail.com',
          'Chau1994@',
        );

        expect(
          Token.fromJson(result?.data),
          isA<Token>(),
        );
      });

      test(
        'throws an exception if the http call completes with an error',
        () async {
          when(
            mockAuthenticateApi.authenticate(
              'dangminhchau0105@gmail.com',
              'Chau1994@',
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 404,
              statusMessage: 'Not Found',
              requestOptions: RequestOptions(),
            ),
          );

          final result = await mockAuthenticateApi.authenticate(
            'dangminhchau0105@gmail.com',
            'Chau1994@',
          );

          expect(result?.statusCode, 404);
        },
      );
    },
  );
}
