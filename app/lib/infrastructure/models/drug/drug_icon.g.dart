// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugIcon _$DrugIconFromJson(Map<String, dynamic> json) => DrugIcon(
      id: json['id'] as int?,
      iconPath: json['iconPath'] as String?,
      isDivisible: json['isDivisible'] as bool?,
      drugTypeId: json['drugTypeId'] as int?,
    );

Map<String, dynamic> _$DrugIconToJson(DrugIcon instance) => <String, dynamic>{
      'id': instance.id,
      'iconPath': instance.iconPath,
      'isDivisible': instance.isDivisible,
      'drugTypeId': instance.drugTypeId,
    };
