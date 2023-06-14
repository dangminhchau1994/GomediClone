import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:dartz/dartz.dart';

abstract class IDrugRepository {
  Future<Either<DrugFailure, List<Drug>>> searchDrug(
    String name, {
    bool isEan = false,
  });
}
