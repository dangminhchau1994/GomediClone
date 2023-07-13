// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugScheduleDefinitions _$DrugScheduleDefinitionsFromJson(
        Map<String, dynamic> json) =>
    DrugScheduleDefinitions(
      id: json['id'] as int?,
      drugTime: json['drugTime'] as String?,
      time: json['time'] as String?,
      doseQuantity: json['doseQuantity'] as int?,
    )..timeToServer = json['timeToServer'] as String?;

Map<String, dynamic> _$DrugScheduleDefinitionsToJson(
        DrugScheduleDefinitions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'drugTime': instance.drugTime,
      'time': instance.timeToServer ??
          DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day,
            int.parse(
              instance.drugTime!.split(':')[0],
            ),
            int.parse(
              instance.drugTime!.split(':')[1],
            ),
          ).toUtc().toIso8601String(),
      'doseQuantity': instance.doseQuantity,
    };
