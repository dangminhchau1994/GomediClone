import 'package:dartz/dartz.dart';
import '../../infrastructure/models/token/token.dart';
import '../core/failures.dart';

abstract class IAuthenticateRepository {
  Future<Either<AuthFailure, Token>> authenticate(
    String username,
    String password,
  );
}
