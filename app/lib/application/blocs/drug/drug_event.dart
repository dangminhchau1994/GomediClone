import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_event.freezed.dart';

@freezed
class DrugEvent with _$DrugEvent {
  const factory DrugEvent.getDrugPriorities() = GetDrugPriorites;

  const factory DrugEvent.getDrugTypes() = GetDrugTypes;

  const factory DrugEvent.getDrugIcons() = GetDrugIcons;

  const factory DrugEvent.getDrugColors() = GetDrugColors;
}
