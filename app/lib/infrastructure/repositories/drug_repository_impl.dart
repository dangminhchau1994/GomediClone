import 'package:app/domain/core/failures.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:app/infrastructure/network/api/drug_api.dart';
import 'package:app/infrastructure/network/dio/dio_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DrugRepositoryImpl implements IDrugRepository {
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
}
