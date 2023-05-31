import 'package:app/infrastructure/models/token/token.dart';
import 'package:app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthenticateRepository {
  Future<Either<AuthFailure, Token>> authenticate(
    String username,
    String password,
  );
}
