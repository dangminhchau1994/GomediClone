import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/models/drug/drug_type.dart';
import 'package:app/infrastructure/models/drug_profile/drug_profile_weekday.dart';
import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/drug/drug_priority.dart';
part 'drug_state.freezed.dart';

@freezed
class DrugState with _$DrugState {
  const factory DrugState({
    int? times,
    int? drugTypeId,
    int? profileDetailId,
    int? iconSelected,
    int? firstColorSelected,
    int? secondColorSelected,
    int? drugPriorityId,
    int? drugIconTypeId,
    int? drugColorId,
    int? drugSecondColorId,
    int? totalDoses,
    int? alertDrugQuantity,
    bool? isDivisible,
    bool? showEndDatePicker,
    String? drugShortName,
    String? drugOwnName,
    String? doctorRecommendation,
    String? startDate,
    String? endDate,
    String? durationDate,
    List<DrugPriority>? drugPriorities,
    List<DrugScheduleDefinitions>? drugScheduleDefinitions,
    List<DrugProfileWeekDays>? drugProfieWeekdays,
    List<DrugType>? drugTypes,
    List<DrugIcon>? drugIcons,
    List<DrugColor>? drugColors,
    DrugFailure? failure,
    BaseStatus? status,
  }) = _DrugState;
}
