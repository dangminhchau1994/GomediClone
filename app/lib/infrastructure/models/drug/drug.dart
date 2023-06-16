import 'package:app/infrastructure/models/lactations/lactations.dart';
import 'package:app/infrastructure/models/pregnancy/prenancy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../profile_substance/profile_substance.dart';
part 'drug.g.dart';

@JsonSerializable()
class Drug {
  final int? id;
  final String? shortName;
  final double? producerId;
  final String? producerName;
  final String? compositionDescription;
  final String? activityDescription;
  final String? indicationDescription;
  final String? constraintIndicationDescription;
  final String? warningDescription;
  final String? pregnancyDescription;
  final String? sideEffectDescription;
  final String? interactionDescription;
  final String? dosageDescription;
  final String? noteDescription;
  final String? therapeuticClass;
  final bool? isActive;
  final List<ProfileSubstance>? drugSubstance;
  final List<String>? eans;
  final List<Pregnancy>? pregnancies;
  final List<Lactations>? lactations;

  Drug({
    this.id,
    this.shortName,
    this.producerId,
    this.producerName,
    this.compositionDescription,
    this.activityDescription,
    this.indicationDescription,
    this.constraintIndicationDescription,
    this.warningDescription,
    this.pregnancyDescription,
    this.sideEffectDescription,
    this.interactionDescription,
    this.dosageDescription,
    this.noteDescription,
    this.therapeuticClass,
    this.isActive,
    this.drugSubstance,
    this.eans,
    this.pregnancies,
    this.lactations,
  });

  factory Drug.fromJson(Map<String, dynamic> json) => _$DrugFromJson(json);

  Map<String, dynamic> toJson() => _$DrugToJson(this);
}
