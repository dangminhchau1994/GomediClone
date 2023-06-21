import 'package:app/infrastructure/models/profile/profile.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileRepository {
  Future<Either<Unit, List<Profile>>> getProfile(int profilePermissionId);
}
