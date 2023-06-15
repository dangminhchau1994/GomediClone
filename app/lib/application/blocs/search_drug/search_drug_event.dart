import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_drug_event.freezed.dart';

@freezed
class SearchDrugEvent with _$SearchDrugEvent {
  const factory SearchDrugEvent.searchDrug(String keyword) = SearchDrug;
}
