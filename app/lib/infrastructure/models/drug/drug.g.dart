// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drug _$DrugFromJson(Map<String, dynamic> json) => Drug(
      id: json['id'] as int?,
      shortName: json['short_name'] as String?,
      producerId: (json['producer_id'] as num?)?.toDouble(),
      producerName: json['producer_name'] as String?,
      compositionDescription: json['composition_description'] as String?,
      activityDescription: json['activity_description'] as String?,
      indicationDescription: json['indication_description'] as String?,
      constraintIndicationDescription:
          json['constraint_indication_description'] as String?,
      warningDescription: json['warning_description'] as String?,
      pregnancyDescription: json['pregnancy_description'] as String?,
      sideEffectDescription: json['side_effect_description'] as String?,
      interactionDescription: json['interaction_description'] as String?,
      dosageDescription: json['dosage_description'] as String?,
      noteDescription: json['note_description'] as String?,
      therapeuticClass: json['therapeutic_class'] as String?,
      isActive: json['is_active'] as bool?,
      drugSubstance: (json['drug_substance'] as List<dynamic>?)
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
      'short_name': instance.shortName,
      'producer_id': instance.producerId,
      'producer_name': instance.producerName,
      'composition_description': instance.compositionDescription,
      'activity_description': instance.activityDescription,
      'indication_description': instance.indicationDescription,
      'constraint_indication_description':
          instance.constraintIndicationDescription,
      'warning_description': instance.warningDescription,
      'pregnancy_description': instance.pregnancyDescription,
      'side_effect_description': instance.sideEffectDescription,
      'interaction_description': instance.interactionDescription,
      'dosage_description': instance.dosageDescription,
      'note_description': instance.noteDescription,
      'therapeutic_class': instance.therapeuticClass,
      'is_active': instance.isActive,
      'drug_substance': instance.drugSubstance?.map((e) => e.toJson()).toList(),
      'eans': instance.eans,
      'pregnancies': instance.pregnancies?.map((e) => e.toJson()).toList(),
      'lactations': instance.lactations?.map((e) => e.toJson()).toList(),
    };
