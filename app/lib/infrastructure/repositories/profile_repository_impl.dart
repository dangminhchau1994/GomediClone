import 'package:app/domain/profile/i_profile_repository.dart';
import 'package:app/infrastructure/models/profile/profile.dart';
import 'package:app/infrastructure/network/api/user_api.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProfileRepositoryImpl implements IProfileRepository {
  final UserApi userApi;

  ProfileRepositoryImpl({required this.userApi});

  @override
  Future<Either<Unit, List<Profile>>> getProfile(
      int profilePermissionId) async {
    try {
      final response = await userApi.getProfiles(profilePermissionId);
      final listProfiles = response?.data as List<dynamic>;
      return right(listProfiles
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      debugPrint(e.toString());
      return left(unit);
    }
  }
}
