import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/infrastructure/models/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    List<Profile>? defaultProfiles,
    List<Profile>? sharedProfiles,
    List<Profile>? createdProfiles,
    List<List<Profile>>? allProfiles,
    BaseStatus? status,
  }) = _ProfileState;
}
