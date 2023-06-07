import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/token/token.dart';
import 'package:app/infrastructure/network/api/authenticate_api.dart';
import 'package:app/infrastructure/repositories/authenticate_respository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'authenticate_repository_impl_test.mocks.dart';

@GenerateMocks([AuthenticateApi])
void main() {
  group(
    'authenticate',
    () {
      test(
        'return token when call api successfully',
        () async {
          final authenticateApi = MockAuthenticateApi();

          when(
            authenticateApi.authenticate(
              'dangminhchau0105@gmail.com',
              'Chau1994@',
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              data: {
                "id_token":
                    "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkYW5nbWluaGNoYXUwMTA1QGdtYWlsLmNvbSIsImF1dGgiOiJST0xFX1VTRVIiLCJ1c2VySWQiOjEwMzgsImV4cCI6MTUzMDU4NzQ3NTM3fQ.VvKK7eni9GYfgwnqann_L3EXXcYxtj2GPXar3bUohDtJ94AY6pjCxIukUvwS9ayLhRsrInnhbF9gmT3j9-EXQQ"
              },
              requestOptions: RequestOptions(),
            ),
          );

          final result = await AuthenticateRepositoryImpl(
            authenticateApi: authenticateApi,
          ).authenticate(
            'dangminhchau0105@gmail.com',
            'Chau1994@',
          );

          result.fold(
            (failure) => failure,
            (data) => expect(
              data,
              isA<Token>(),
            ),
          );
        },
      );

      test(
        'throw exception when call api failed',
        () async {
          final authenticateApi = MockAuthenticateApi();

          when(
            authenticateApi.authenticate(
              'dangminhchau0105@gmail.com',
              'Chau1994@',
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 400,
              requestOptions: RequestOptions(),
            ),
          );

          final result = await AuthenticateRepositoryImpl(
            authenticateApi: authenticateApi,
          ).authenticate(
            'dangminhchau0105@gmail.com',
            'Chau1994@',
          );

          result.fold(
            (failure) => expect(
              failure,
              isA<AuthFailure>(),
            ),
            (data) => data,
          );
        },
      );
    },
  );
}
