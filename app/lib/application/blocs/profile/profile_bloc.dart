import 'package:app/application/blocs/profile/profile_event.dart';
import 'package:app/application/blocs/profile/profile_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/profile/i_profile_repository.dart';
import 'package:app/infrastructure/models/profile/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.repository)
      : super(
          const ProfileState(
            status: BaseStatus.initial(),
          ),
        ) {
    on<ProfileEvent>(_getProfiles);
  }

  final IProfileRepository repository;

  Future<void> _getProfiles(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    for (int index = 1; index < 4; index++) {
      final result = await repository.getProfile(index);

      result.fold(
        (l) => null,
        (data) {
          final List<List<Profile>> allProfiles = [];

          if (index == 1) {
            emit(state.copyWith(
              defaultProfiles: data,
            ));
          } else if (index == 2) {
            emit(state.copyWith(
              sharedProfiles: data,
            ));
          } else {
            emit(state.copyWith(
              createdProfiles: data,
            ));
          }

          allProfiles.addAll([
            state.defaultProfiles ?? [],
            state.sharedProfiles ?? [],
            state.createdProfiles ?? []
          ]);

          emit(
            state.copyWith(
              allProfiles: allProfiles,
              status: const BaseStatus.success(),
            ),
          );
        },
      );
    }
  }
}
