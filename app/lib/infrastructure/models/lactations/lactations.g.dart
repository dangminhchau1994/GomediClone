// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lactations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lactations _$LactationsFromJson(Map<String, dynamic> json) => Lactations(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      enumKey: json['enum_key'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$LactationsToJson(Lactations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enum_key': instance.enumKey,
      'is_active': instance.isActive,
    };
