import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_event.freezed.dart';

@freezed
class DrugEvent with _$DrugEvent {
  const factory DrugEvent.getDrugPriorities() = GetDrugPriorites;

  const factory DrugEvent.getDrugTypes() = GetDrugTypes;

  const factory DrugEvent.getDrugIcons() = GetDrugIcons;

  const factory DrugEvent.getDrugColors() = GetDrugColors;

  const factory DrugEvent.addDrugTypeId(int drugTypeId) = AddDrugTypeId;

  const factory DrugEvent.drugIconSelected(int? iconSelected) =
      DrugIconSelected;

  const factory DrugEvent.drugFirstColorSelected(int? colorSelected) =
      DrugFirstColorSelected;

  const factory DrugEvent.drugSecondColorSelected(int? secondColorSelected) =
      DrugSecondColorSelected;

  const factory DrugEvent.isDrugDivisible(bool isDrugDivisible) = DrugDivisible;
}