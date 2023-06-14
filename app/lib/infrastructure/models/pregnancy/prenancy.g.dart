// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prenancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pregnancy _$PregnancyFromJson(Map<String, dynamic> json) => Pregnancy(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      enumKey: json['enum_key'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$PregnancyToJson(Pregnancy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enum_key': instance.enumKey,
      'is_active': instance.isActive,
    };
