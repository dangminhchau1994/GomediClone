import 'package:app/infrastructure/models/register/register.dart';
import 'package:dartz/dartz.dart';
import '../../infrastructure/models/token/token.dart';
import '../core/failures.dart';

abstract class IAuthenticateRepository {
  Future<Either<AuthFailure, Token>> authenticate(
    String username,
    String password,
  );

  Future<Either<AuthFailure, Unit>> register(
    Register request,
  );
}
