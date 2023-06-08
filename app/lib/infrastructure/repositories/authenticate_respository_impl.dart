import 'package:app/domain/core/failures.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:app/infrastructure/models/register/register.dart';
import 'package:app/infrastructure/models/token/token.dart';
import 'package:app/infrastructure/network/api/authenticate_api.dart';
import 'package:app/infrastructure/network/dio/dio_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthenticateRepositoryImpl implements IAuthenticateRepository {
  final AuthenticateApi authenticateApi;

  Future<AuthenticateRepositoryImpl> init() async {
    Future.delayed(const Duration(seconds: 1));
    return this;
  }

  AuthenticateRepositoryImpl({
    required this.authenticateApi,
  });

  @override
  Future<Either<AuthFailure, Token>> authenticate(
    String username,
    String password,
  ) async {
    try {
      final response = await authenticateApi.authenticate(username, password);
      return right(Token.fromJson(response?.data as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(
        AuthFailure.serverError(DioExceptions.fromDioError(e).toString()),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register(Register request) async {
    try {
      await authenticateApi.register(request);
      return right(unit);
    } on DioException catch (e) {
      return left(
        AuthFailure.serverError(DioExceptions.fromDioError(e).message),
      );
    }
  }
}
