// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_eans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugEans _$DrugEansFromJson(Map<String, dynamic> json) => DrugEans(
      id: json['id'] as int?,
      ean: json['ean'] as String?,
      drugId: json['drugId'] as int?,
    );

Map<String, dynamic> _$DrugEansToJson(DrugEans instance) => <String, dynamic>{
      'id': instance.id,
      'ean': instance.ean,
      'drugId': instance.drugId,
    };
