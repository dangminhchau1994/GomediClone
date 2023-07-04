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
    on<GetDrugTypes>(_getDrugTypes);
    on<GetDrugIcons>(_getDrugIcons);
    on<GetDrugColors>(_getDrugColors);
    on<AddDrugSchedule>(
      (event, emit) {
        emit(state.copyWith(drugScheduleDefinitions: []));
        emit(state.copyWith(drugScheduleDefinitions: event.drugSchedules));
      },
    );
    on<AddStartDate>(
      (event, emit) {
        emit(state.copyWith(startDate: event.startDate));
      },
    );
    on<AddEndDate>(
      (event, emit) {
        emit(state.copyWith(endDate: event.endDate));
      },
    );
    on<AddDateDuration>(
      (event, emit) {
        emit(state.copyWith(durationDate: event.duration));
      },
    );
    on<AddDrugTypeId>(
      (event, emit) => emit(
        state.copyWith(drugTypeId: event.drugTypeId),
      ),
    );
    on<ShowEndDatePicker>(
      (event, emit) => emit(
        state.copyWith(showEndDatePicker: event.isShow),
      ),
    );
    on<DrugIconSelected>(
      (event, emit) => emit(
        state.copyWith(iconSelected: event.iconSelected),
      ),
    );
    on<DrugFirstColorSelected>(
      (event, emit) => emit(
        state.copyWith(firstColorSelected: event.colorSelected),
      ),
    );
    on<DrugSecondColorSelected>(
      (event, emit) => emit(
        state.copyWith(secondColorSelected: event.secondColorSelected),
      ),
    );
    on<DrugDivisible>(
      (event, emit) => emit(
        state.copyWith(isDivisible: event.isDrugDivisible),
      ),
    );
    add(const GetDrugPriorites());
    add(const GetDrugTypes());
    add(const GetDrugColors());
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

  Future<void> _getDrugTypes(
    GetDrugTypes event,
    Emitter<DrugState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final result = await repository.getDrugTypes();

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
        add(const GetDrugIcons());
        add(AddDrugTypeId(state.drugTypeId ?? data.first.id!));
        add(DrugIconSelected(state.iconSelected ?? 0));
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
            drugTypes: data,
          ),
        );
      },
    );
  }

  Future<void> _getDrugIcons(
    GetDrugIcons event,
    Emitter<DrugState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final result = await repository.getDrugIcons();

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
            drugIcons: data,
          ),
        );
      },
    );
  }

  Future<void> _getDrugColors(
    GetDrugColors event,
    Emitter<DrugState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final result = await repository.getDrugColors();

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
            drugColors: data,
          ),
        );
      },
    );
  }
}
