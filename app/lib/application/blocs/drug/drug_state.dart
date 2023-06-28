import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/models/drug/drug_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/drug/drug_priority.dart';
part 'drug_state.freezed.dart';

@freezed
class DrugState with _$DrugState {
  const factory DrugState({
    int? drugTypeId,
    int? iconSelected,
    int? firstColorSelected,
    int? secondColorSelected,
    bool? isDivisible,
    List<DrugPriority>? drugPriorities,
    List<DrugType>? drugTypes,
    List<DrugIcon>? drugIcons,
    List<DrugColor>? drugColors,
    DrugFailure? failure,
    BaseStatus? status,
  }) = _DrugState;
}