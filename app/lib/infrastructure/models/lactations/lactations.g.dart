// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lactations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lactations _$LactationsFromJson(Map<String, dynamic> json) => Lactations(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      enumKey: json['enumKey'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$LactationsToJson(Lactations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enumKey': instance.enumKey,
      'isActive': instance.isActive,
    };
