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

  test('check authenticate api', () async {
    when(mockAuthenticateApi.authenticate(
      'dangminhchau0105@gmail.com',
      'Chau1994@',
    )).thenAnswer(
      (_) => Future.value(Response(
        statusCode: 200,
        data: {
          "id_token":
              "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkYW5nbWluaGNoYXUwMTA1QGdtYWlsLmNvbSIsImF1dGgiOiJST0xFX1VTRVIiLCJ1c2VySWQiOjEwMzgsImV4cCI6MTUzMDU3OTY4MDQyfQ.oqstOLbHEt-FdfLy1pW9GifJ-HE_JhKAvu61NwgcoEZd4wKwSTdXJXM5fOz0lPjoVZ8a3DXT5CnWyToanBTIig"
        },
        requestOptions: RequestOptions(),
      )),
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
}
