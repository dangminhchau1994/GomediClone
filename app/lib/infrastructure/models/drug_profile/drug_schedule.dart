import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_schedule.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class DrugScheduleDefinitions extends Equatable {
  int? id;
  String? drugTime;
  String? timeToServer;
  String? time;
  int? doseQuantity;

  DrugScheduleDefinitions({
    this.id,
    this.drugTime,
    this.time,
    this.doseQuantity,
  });

  factory DrugScheduleDefinitions.fromJson(Map<String, dynamic> json) =>
      _$DrugScheduleDefinitionsFromJson(json);

  Map<String, dynamic> toJson() => _$DrugScheduleDefinitionsToJson(this);

  @override
  List<Object?> get props => [
        id,
        drugTime,
        time,
        doseQuantity,
      ];
}
