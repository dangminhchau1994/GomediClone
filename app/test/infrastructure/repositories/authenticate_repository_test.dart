import 'package:app/infrastructure/models/token/token.dart';
import 'package:app/infrastructure/network/api/authenticate_api.dart';
import 'package:app/infrastructure/repositories/authenticate_respository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthenticateApi extends Mock implements AuthenticateApi {}

void main() {
  late AuthenticateRepositoryImpl authenticateRepositoryImpl;
  late MockAuthenticateApi mockTokenApi;

  setUp(() {
    mockTokenApi = MockAuthenticateApi();
    authenticateRepositoryImpl = AuthenticateRepositoryImpl(
      authenticateApi: mockTokenApi,
    );
  });

  test('check authenticate api', () async {
    final tokenModel = Token(
      idToken:
          "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkYW5nbWluaGNoYXUwMTA1QGdtYWlsLmNvbSIsImF1dGgiOiJST0xFX1VTRVIiLCJ1c2VySWQiOjEwMzgsImV4cCI6MTUzMDU3OTY4MDQyfQ.oqstOLbHEt-FdfLy1pW9GifJ-HE_JhKAvu61NwgcoEZd4wKwSTdXJXM5fOz0lPjoVZ8a3DXT5CnWyToanBTIig",
    );

    when(authenticateRepositoryImpl.authenticate(
      'dangminhchau0105@gmail.com',
      'Chau1994@',
    )).thenAnswer(
      (_) async => right(tokenModel),
    );

    final result = await authenticateRepositoryImpl.authenticate(
      'dangminhchau0105@gmail.com',
      'Chau1994@',
    );

    verify(authenticateRepositoryImpl.authenticate(
      'dangminhchau0105@gmail.com',
      'Chau1994@',
    ));

    expect(right(result), isA<Token>());
  });
}
