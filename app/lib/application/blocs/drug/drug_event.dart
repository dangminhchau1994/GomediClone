import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_event.freezed.dart';

@freezed
class DrugEvent with _$DrugEvent {
  const factory DrugEvent.getDrugPriorities() = GetDrugPriorites;
}
