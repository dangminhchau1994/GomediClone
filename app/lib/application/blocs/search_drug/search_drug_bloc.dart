import 'package:app/application/blocs/search_drug/search_drug_event.dart';
import 'package:app/application/blocs/search_drug/search_drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchDrugBloc extends Bloc<SearchDrugEvent, SearchDrugState> {
  SearchDrugBloc(this.repository)
      : super(
          const SearchDrugState(
            status: BaseStatus.initial(),
          ),
        ) {
    on<SearchDrugEvent>(_getDrug);
  }

  final IDrugRepository repository;

  Future<void> _getDrug(
    SearchDrugEvent event,
    Emitter<SearchDrugState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    final result = await repository.searchDrug(event.keyword);

    result.fold(
      (failure) {
        emit(state.copyWith(
          status: const BaseStatus.failure(),
          failure: failure,
        ));

        emit(state.copyWith(
          status: const BaseStatus.initial(),
        ));
      },
      (data) {
        emit(state.copyWith(
          status: const BaseStatus.success(),
          drugs: data,
        ));

        emit(state.copyWith(
          status: const BaseStatus.initial(),
        ));
      },
    );
  }
}
