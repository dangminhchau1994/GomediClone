import 'package:app/domain/core/failures.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/models/drug/drug_priority.dart';
import 'package:app/infrastructure/models/drug/drug_type.dart';
import 'package:app/infrastructure/network/api/drug_api.dart';
import 'package:app/infrastructure/network/dio/dio_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DrugRepositoryImpl extends IDrugRepository {
  final DrugApi? drugApi;

  DrugRepositoryImpl({required this.drugApi});

  @override
  Future<Either<DrugFailure, List<Drug>>> searchDrug(
    String name, {
    bool isEan = false,
  }) async {
    try {
      final response = await drugApi?.searchDrug(name, isEan: isEan);
      final listDrugs = response?.data as List<dynamic>;
      return right(listDrugs
          .map((e) => Drug.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }

  @override
  Future<Either<DrugFailure, List<DrugPriority>>> getDrugPriorities() async {
    try {
      final response = await drugApi?.drugPriorities();
      final listDrugPriorities = response?.data as List<dynamic>;
      return right(listDrugPriorities
          .map((e) => DrugPriority.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }

  @override
  Future<Either<DrugFailure, List<DrugType>>> getDrugTypes() async {
    try {
      final response = await drugApi?.getDrugTypes();
      final listDrugTypes = response?.data as List<dynamic>;
      return right(listDrugTypes
          .map((e) => DrugType.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }

  @override
  Future<Either<DrugFailure, List<DrugIcon>>> getDrugIcons() async {
    try {
      final response = await drugApi?.getDrugIcons();
      final listDrugIcons = response?.data as List<dynamic>;
      return right(listDrugIcons
          .map((e) => DrugIcon.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }

  @override
  Future<Either<DrugFailure, List<DrugColor>>> getDrugColors() async {
    try {
      final response = await drugApi?.getDrugColors();
      final listDrugColors = response?.data as List<dynamic>;
      return right(listDrugColors
          .map((e) => DrugColor.fromJson(e as Map<String, dynamic>))
          .toList());
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }

  @override
  Future<Either<DrugFailure, Unit>> addDrugToProfile(
      Map<String, dynamic> params) async {
    try {
      await drugApi?.addDrugToProfile(params);
      return right(unit);
    } on DioException catch (e) {
      return left(
        DrugFailure.serverError(
          DioExceptions.fromDioError(e).toString(),
        ),
      );
    }
  }
}
