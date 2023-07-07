import 'package:app/infrastructure/models/drug_profile/drug_profile_weekday.dart';
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

  const factory DrugEvent.addDrugIconId(int iconId) = AddDrugIconId;

  const factory DrugEvent.chooseProfileId(int profileId) = ChooseProfileId;

  const factory DrugEvent.chooseDrugPriorityId(int drugPriorityId) =
      AddDrugPriorityId;

  const factory DrugEvent.chooseDrugColorId(int drugColorId) =
      ChooseDrugColorId;

  const factory DrugEvent.chooseDrugSecondColorId(int drugSecondColorId) =
      ChooseDrugSecondColorId;

  const factory DrugEvent.addFrequency(int frequency) = AddFrequency;

  const factory DrugEvent.addTotalDoses(int totalDoses) = AddTotalDoses;

  const factory DrugEvent.addDrugAlertQuantity(int drugAlertQuantity) =
      AddDrugAlertQuantity;

  const factory DrugEvent.addDoctorRecommendation(String doctorRecommendation) =
      AddDoctorRecommendation;

  const factory DrugEvent.addNameDrug(String nameDrug) = AddNameDrug;

  const factory DrugEvent.addOwnNameDrug(String ownNameDrug) = AddOwnNameDrug;

  const factory DrugEvent.drugIconSelected(int? iconSelected) =
      DrugIconSelected;

  const factory DrugEvent.chooseFirstColorId(int? firstColorId) =
      ChooseFirstColorId;

  const factory DrugEvent.chooseSecondColorId(int? secondColorId) =
      ChooseSecondColorId;

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

  const factory DrugEvent.addWeekdays(List<DrugProfileWeekDays> weekdays) =
      AddDrugWeekdays;
}
