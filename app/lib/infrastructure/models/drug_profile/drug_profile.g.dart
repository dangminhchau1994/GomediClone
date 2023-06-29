// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugProfile _$DrugProfileFromJson(Map<String, dynamic> json) => DrugProfile(
      id: json['id'] as int?,
      name: json['name'] as String?,
      drugOwnName: json['drugOwnName'] as String?,
      doctorRecommendation: json['doctorRecommendation'] as String?,
      totalDrugDoses: json['totalDrugDoses'] as int?,
      drugAlertQuantity: json['drugAlertQuantity'] as int?,
      profileDetailId: json['profileDetailId'] as int?,
      drugPriorityId: json['drugPriorityId'] as int?,
      drugTypeId: json['drugTypeId'] as int?,
      drugStatusId: json['drugStatusId'] as int?,
      colorTypeId: json['colorTypeId'] as int?,
      colorTypeSecondaryId: json['colorTypeSecondaryId'] as int?,
      drugIconTypeId: json['drugIconTypeId'] as int?,
      drugId: json['drugId'] as String?,
      drugInfoDTO: json['drugInfoDTO'],
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      dateAfterStartDate: json['dateAfterStartDate'] as String?,
      dateBeforeEndDate: json['dateBeforeEndDate'] as String?,
      drugFrequency: json['drugFrequency'] as int?,
      drugScheduleDefinitions:
          (json['drugScheduleDefinitions'] as List<dynamic>?)
              ?.map((e) =>
                  DrugScheduleDefinitions.fromJson(e as Map<String, dynamic>))
              .toList(),
      drugProfileWeekDays: (json['drugProfileWeekDays'] as List<dynamic>?)
          ?.map((e) => DrugProfileWeekDays.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$DrugProfileToJson(DrugProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'drugOwnName': instance.drugOwnName,
      'doctorRecommendation': instance.doctorRecommendation,
      'totalDrugDoses': instance.totalDrugDoses,
      'drugAlertQuantity': instance.drugAlertQuantity,
      'profileDetailId': instance.profileDetailId,
      'drugPriorityId': instance.drugPriorityId,
      'drugTypeId': instance.drugTypeId,
      'drugStatusId': instance.drugStatusId,
      'colorTypeId': instance.colorTypeId,
      'colorTypeSecondaryId': instance.colorTypeSecondaryId,
      'drugIconTypeId': instance.drugIconTypeId,
      'drugId': instance.drugId,
      'drugInfoDTO': instance.drugInfoDTO,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'dateAfterStartDate': instance.dateAfterStartDate,
      'dateBeforeEndDate': instance.dateBeforeEndDate,
      'drugFrequency': instance.drugFrequency,
      'drugScheduleDefinitions':
          instance.drugScheduleDefinitions?.map((e) => e.toJson()).toList(),
      'drugProfileWeekDays':
          instance.drugProfileWeekDays?.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt,
    };
