import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/drug/drug.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/models/drug/drug_priority.dart';
import 'package:app/infrastructure/models/drug/drug_type.dart';
import 'package:dartz/dartz.dart';

abstract class IDrugRepository {
  Future<Either<DrugFailure, List<Drug>>> searchDrug(String name,
      {bool isEan = false});

  Future<Either<DrugFailure, List<DrugPriority>>> getDrugPriorities();

  Future<Either<DrugFailure, List<DrugType>>> getDrugTypes();

  Future<Either<DrugFailure, List<DrugIcon>>> getDrugIcons();

  Future<Either<DrugFailure, List<DrugColor>>> getDrugColors();
}
