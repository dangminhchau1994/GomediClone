import 'dart:convert';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:app/infrastructure/models/drug_profile/drug_profile.dart';
import 'package:app/infrastructure/models/drug_profile/drug_profile_weekday.dart';
import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
import 'package:flutter/material.dart';
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
    on<AddDrugToProfile>(_addDrugToProfile);
    on<AddNameDrug>(
      (event, emit) {
        emit(state.copyWith(drugShortName: event.nameDrug));
      },
    );
    on<AddDrugId>(
      (event, emit) {
        emit(state.copyWith(drugId: event.drugId));
      },
    );
    on<AddFrequency>(
      (event, emit) {
        emit(state.copyWith(times: event.frequency));
      },
    );
    on<AddOwnNameDrug>(
      (event, emit) {
        emit(state.copyWith(drugOwnName: event.ownNameDrug));
      },
    );
    on<AddTotalDoses>(
      (event, emit) {
        emit(state.copyWith(totalDoses: event.totalDoses));
      },
    );
    on<AddDoctorRecommendation>(
      (event, emit) {
        emit(state.copyWith(status: const BaseStatus.initial()));
        emit(state.copyWith(doctorRecommendation: event.doctorRecommendation));
      },
    );
    on<AddDrugAlertQuantity>(
      (event, emit) {
        emit(state.copyWith(alertDrugQuantity: event.drugAlertQuantity));
      },
    );
    on<AddDrugIconId>(
      (event, emit) {
        emit(state.copyWith(drugIconTypeId: event.iconId));
      },
    );
    on<AddDrugSchedule>(
      (event, emit) {
        emit(state.copyWith(drugScheduleDefinitions: []));
        emit(state.copyWith(drugScheduleDefinitions: event.drugSchedules));
      },
    );
    on<AddDrugWeekdays>(
      (event, emit) {
        emit(state.copyWith(drugProfieWeekdays: []));
        emit(state.copyWith(drugProfieWeekdays: event.weekdays));
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
    on<AddDrugPriorityId>(
      (event, emit) => emit(
        state.copyWith(drugPriorityId: event.drugPriorityId),
      ),
    );
    on<ChooseProfileId>(
      (event, emit) => emit(
        state.copyWith(profileDetailId: event.profileId),
      ),
    );
    on<ChooseFirstColorId>(
      (event, emit) => emit(
        state.copyWith(drugColorId: event.firstColorId),
      ),
    );
    on<ChooseSecondColorId>(
      (event, emit) => emit(
        state.copyWith(drugSecondColorId: event.secondColorId),
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

  Future<void> _addDrugToProfile(
    AddDrugToProfile event,
    Emitter<DrugState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final params = DrugProfile(
      id: state.drugId,
      name: state.drugShortName,
      drugOwnName: state.drugOwnName,
      profileDetailId: state.profileDetailId,
      doctorRecommendation: state.doctorRecommendation,
      totalDrugDoses: state.totalDoses,
      drugAlertQuantity: state.alertDrugQuantity,
      drugPriorityId: state.drugPriorityId,
      drugTypeId: state.drugTypeId,
      drugIconTypeId: state.drugIconTypeId,
      colorTypeId: state.drugColorId,
      colorTypeSecondaryId: state.drugSecondColorId,
      drugFrequency: state.times,
      drugProfileWeekDays: state.drugProfieWeekdays,
      startDate: state.startDate,
      endDate: state.endDate,
      drugScheduleDefinitions: state.drugScheduleDefinitions
          ?.map((e) => e.toJson())
          .toList()
          .map((e) => DrugScheduleDefinitions.fromJson(e))
          .toList(),
    ).toJson();

    debugPrint('drugParam: ${jsonEncode(params)}');

    final result = await repository.addDrugToProfile(params);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            failure: failure,
            status: const BaseStatus.failure(),
          ),
        );
        emit(
          state.copyWith(
            failure: failure,
            status: const BaseStatus.initial(),
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
          ),
        );
        emit(
          state.copyWith(
            status: const BaseStatus.initial(),
          ),
        );
      },
    );
  }

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

  List<Map<String, dynamic>> _handleWeekDays() {
    if (state.drugProfieWeekdays?.contains(
          const DrugProfileWeekDays(weekDayId: 1),
        ) ??
        true) {
      return [
        const DrugProfileWeekDays(weekDayId: 1).toJson(),
      ];
    }
    return state.drugProfieWeekdays!.map((e) => e.toJson()).toList();
  }
}
