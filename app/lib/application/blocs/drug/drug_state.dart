import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/drug/drug_priority.dart';
part 'drug_state.freezed.dart';

@freezed
class DrugState with _$DrugState {
  const factory DrugState({
    List<DrugPriority>? drugPriorities,
    DrugFailure? failure,
    BaseStatus? status,
  }) = _DrugState;
}
