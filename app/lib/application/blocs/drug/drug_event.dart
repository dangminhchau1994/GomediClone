import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
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

  const factory DrugEvent.addDrugSchedule(
      List<DrugScheduleDefinitions> drugSchedules) = AddDrugSchedule;

  const factory DrugEvent.addStartDate(String startDate) = AddStartDate;

  const factory DrugEvent.addEndDate(String endDate) = AddEndDate;

  const factory DrugEvent.showEndDatePicker(bool isShow) = ShowEndDatePicker;

  const factory DrugEvent.addDateDuration(String duration) = AddDateDuration;
}
