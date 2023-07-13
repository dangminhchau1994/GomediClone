import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../profile_substance/profile_substance.dart';
part 'profile.g.dart';

@JsonSerializable()
class Profile extends Equatable {
  final int? id;
  final String? birthDate;
  final String? name;
  final String? imagePath;
  final String? imageUrl;
  final String? email;
  final int? genderTypeId;
  final int? profilePermissionId;
  final int? languageId;
  final int? sharedTimes;
  final bool? isPregnancy;
  final bool? isLactation;
  final String? pregnancyFrom;
  final String? pregnancyTo;
  final String? lactationFrom;
  final String? lactationTo;
  final List<ProfileSubstance>? profileDetailSubstances;

  const Profile({
    this.id,
    this.birthDate,
    this.name,
    this.imagePath,
    this.imageUrl,
    this.email,
    this.genderTypeId,
    this.profilePermissionId,
    this.languageId,
    this.sharedTimes,
    this.isPregnancy,
    this.isLactation,
    this.pregnancyFrom,
    this.pregnancyTo,
    this.lactationFrom,
    this.lactationTo,
    this.profileDetailSubstances,
  });

  @override
  List<Object?> get props => [
        id,
        birthDate,
        name,
        imagePath,
        email,
        genderTypeId,
        profilePermissionId,
        languageId,
        sharedTimes,
        isPregnancy,
        isLactation,
        pregnancyFrom,
        pregnancyTo,
        profileDetailSubstances,
      ];

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
