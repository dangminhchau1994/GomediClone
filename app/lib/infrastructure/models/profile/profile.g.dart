// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as int?,
      birthDate: json['birthDate'] as String?,
      name: json['name'] as String?,
      imagePath: json['imagePath'] as String?,
      imageUrl: json['imageUrl'] as String?,
      email: json['email'] as String?,
      genderTypeId: json['genderTypeId'] as int?,
      profilePermissionId: json['profilePermissionId'] as int?,
      languageId: json['languageId'] as int?,
      sharedTimes: json['sharedTimes'] as int?,
      isPregnancy: json['isPregnancy'] as bool?,
      isLactation: json['isLactation'] as bool?,
      pregnancyFrom: json['pregnancyFrom'] as String?,
      pregnancyTo: json['pregnancyTo'] as String?,
      lactationFrom: json['lactationFrom'] as String?,
      lactationTo: json['lactationTo'] as String?,
      profileDetailSubstances:
          (json['profileDetailSubstances'] as List<dynamic>?)
              ?.map((e) => ProfileSubstance.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'birthDate': instance.birthDate,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'imageUrl': instance.imageUrl,
      'email': instance.email,
      'genderTypeId': instance.genderTypeId,
      'profilePermissionId': instance.profilePermissionId,
      'languageId': instance.languageId,
      'sharedTimes': instance.sharedTimes,
      'isPregnancy': instance.isPregnancy,
      'isLactation': instance.isLactation,
      'pregnancyFrom': instance.pregnancyFrom,
      'pregnancyTo': instance.pregnancyTo,
      'lactationFrom': instance.lactationFrom,
      'lactationTo': instance.lactationTo,
      'profileDetailSubstances':
          instance.profileDetailSubstances?.map((e) => e.toJson()).toList(),
    };
