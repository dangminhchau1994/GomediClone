// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_substance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileSubstance _$ProfileSubstanceFromJson(Map<String, dynamic> json) =>
    ProfileSubstance(
      id: json['id'] as int?,
      drugId: json['drug_id'] as int?,
      profileDetailId: json['profile_detail_id'] as int?,
      substanceId: json['substance_id'] as int?,
      substance: json['substance'] == null
          ? null
          : Substance.fromJson(json['substance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileSubstanceToJson(ProfileSubstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'drug_id': instance.drugId,
      'profile_detail_id': instance.profileDetailId,
      'substance_id': instance.substanceId,
      'substance': instance.substance?.toJson(),
    };
