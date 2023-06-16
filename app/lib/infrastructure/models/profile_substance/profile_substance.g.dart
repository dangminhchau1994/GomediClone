// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_substance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileSubstance _$ProfileSubstanceFromJson(Map<String, dynamic> json) =>
    ProfileSubstance(
      id: json['id'] as int?,
      drugId: json['drugId'] as int?,
      profileDetailId: json['profileDetailId'] as int?,
      substanceId: json['substanceId'] as int?,
      substance: json['substance'] == null
          ? null
          : Substance.fromJson(json['substance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileSubstanceToJson(ProfileSubstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'drugId': instance.drugId,
      'profileDetailId': instance.profileDetailId,
      'substanceId': instance.substanceId,
      'substance': instance.substance?.toJson(),
    };
