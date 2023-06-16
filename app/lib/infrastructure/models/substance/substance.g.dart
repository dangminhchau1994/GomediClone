// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Substance _$SubstanceFromJson(Map<String, dynamic> json) => Substance(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      enumKey: json['enumKey'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$SubstanceToJson(Substance instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enumKey': instance.enumKey,
      'isActive': instance.isActive,
    };
