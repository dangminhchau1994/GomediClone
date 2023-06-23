import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrugBloc extends Bloc<DrugEvent, DrugState> {
  DrugBloc(this.repository)
      : super(
          const DrugState(
            status: BaseStatus.initial(),
          ),
        ) {
    on<GetDrugPriorites>(_getDrugPriorities);
  }

  final IDrugRepository repository;

  Future<void> _getDrugPriorities(
    GetDrugPriorites event,
    Emitter<DrugState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final result = await repository.getDrugPriorities();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: const BaseStatus.failure(),
            failure: failure,
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
            drugPriorities: data,
          ),
        );
      },
    );
  }
}
