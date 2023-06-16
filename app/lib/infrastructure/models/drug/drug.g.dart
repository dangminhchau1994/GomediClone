// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drug _$DrugFromJson(Map<String, dynamic> json) => Drug(
      id: json['id'] as int?,
      shortName: json['shortName'] as String?,
      producerId: (json['producerId'] as num?)?.toDouble(),
      producerName: json['producerName'] as String?,
      compositionDescription: json['compositionDescription'] as String?,
      activityDescription: json['activityDescription'] as String?,
      indicationDescription: json['indicationDescription'] as String?,
      constraintIndicationDescription:
          json['constraintIndicationDescription'] as String?,
      warningDescription: json['warningDescription'] as String?,
      pregnancyDescription: json['pregnancyDescription'] as String?,
      sideEffectDescription: json['sideEffectDescription'] as String?,
      interactionDescription: json['interactionDescription'] as String?,
      dosageDescription: json['dosageDescription'] as String?,
      noteDescription: json['noteDescription'] as String?,
      therapeuticClass: json['therapeuticClass'] as String?,
      isActive: json['isActive'] as bool?,
      drugSubstance: (json['drugSubstance'] as List<dynamic>?)
          ?.map((e) => ProfileSubstance.fromJson(e as Map<String, dynamic>))
          .toList(),
      eans: (json['eans'] as List<dynamic>?)?.map((e) => e as String).toList(),
      pregnancies: (json['pregnancies'] as List<dynamic>?)
          ?.map((e) => Pregnancy.fromJson(e as Map<String, dynamic>))
          .toList(),
      lactations: (json['lactations'] as List<dynamic>?)
          ?.map((e) => Lactations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DrugToJson(Drug instance) => <String, dynamic>{
      'id': instance.id,
      'shortName': instance.shortName,
      'producerId': instance.producerId,
      'producerName': instance.producerName,
      'compositionDescription': instance.compositionDescription,
      'activityDescription': instance.activityDescription,
      'indicationDescription': instance.indicationDescription,
      'constraintIndicationDescription':
          instance.constraintIndicationDescription,
      'warningDescription': instance.warningDescription,
      'pregnancyDescription': instance.pregnancyDescription,
      'sideEffectDescription': instance.sideEffectDescription,
      'interactionDescription': instance.interactionDescription,
      'dosageDescription': instance.dosageDescription,
      'noteDescription': instance.noteDescription,
      'therapeuticClass': instance.therapeuticClass,
      'isActive': instance.isActive,
      'drugSubstance': instance.drugSubstance?.map((e) => e.toJson()).toList(),
      'eans': instance.eans,
      'pregnancies': instance.pregnancies?.map((e) => e.toJson()).toList(),
      'lactations': instance.lactations?.map((e) => e.toJson()).toList(),
    };
