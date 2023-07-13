import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/drug/drug.dart';
part 'search_drug_state.freezed.dart';

@unfreezed
class SearchDrugState with _$SearchDrugState {
  const factory SearchDrugState({
    final BaseStatus? status,
    final String? keyword,
    final List<Drug>? drugs,
    final DrugFailure? failure,
  }) = _SearchDrugState;
}
