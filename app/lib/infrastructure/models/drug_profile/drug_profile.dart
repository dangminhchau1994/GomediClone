import 'package:app/infrastructure/models/drug_profile/drug_profile_weekday.dart';
import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_profile.g.dart';

@JsonSerializable()
class DrugProfile extends Equatable {
  final int? id;
  final String? name;
  final String? drugOwnName;
  final String? doctorRecommendation;
  final int? totalDrugDoses;
  final int? drugAlertQuantity;
  final int? profileDetailId;
  final int? drugPriorityId;
  final int? drugTypeId;
  final int? drugStatusId;
  final int? colorTypeId;
  final int? colorTypeSecondaryId;
  final int? drugIconTypeId;
  final int? drugId;
  final dynamic drugInfoDTO;
  final String? startDate;
  final String? endDate;
  final String? dateAfterStartDate;
  final String? dateBeforeEndDate;
  final int? drugFrequency;
  final List<DrugScheduleDefinitions>? drugScheduleDefinitions;
  final List<DrugProfileWeekDays>? drugProfileWeekDays;
  final String? createdAt;

  const DrugProfile({
    this.id,
    this.name,
    this.drugOwnName,
    this.doctorRecommendation,
    this.totalDrugDoses,
    this.drugAlertQuantity,
    this.profileDetailId,
    this.drugPriorityId,
    this.drugTypeId,
    this.drugStatusId,
    this.colorTypeId,
    this.colorTypeSecondaryId,
    this.drugIconTypeId,
    this.drugId,
    this.drugInfoDTO,
    this.startDate,
    this.endDate,
    this.dateAfterStartDate,
    this.dateBeforeEndDate,
    this.drugFrequency,
    this.drugScheduleDefinitions,
    this.drugProfileWeekDays,
    this.createdAt,
  });

  factory DrugProfile.fromJson(Map<String, dynamic> json) =>
      _$DrugProfileFromJson(json);

  Map<String, dynamic> toJson() => _$DrugProfileToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        drugOwnName,
        doctorRecommendation,
        totalDrugDoses,
        drugAlertQuantity,
        profileDetailId,
        drugPriorityId,
        drugTypeId,
        drugStatusId,
        colorTypeId,
        colorTypeSecondaryId,
        drugIconTypeId,
        drugId,
        drugInfoDTO,
        startDate,
        endDate,
        dateAfterStartDate,
        dateBeforeEndDate,
        drugFrequency,
        drugScheduleDefinitions,
        drugProfileWeekDays,
        createdAt,
      ];
}
