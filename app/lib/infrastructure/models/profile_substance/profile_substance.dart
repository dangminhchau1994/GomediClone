import 'package:app/infrastructure/models/substance/substance.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_substance.g.dart';

@JsonSerializable()
class ProfileSubstance {
  final int? id;
  final int? drugId;
  final int? profileDetailId;
  final int? substanceId;
  final Substance? substance;

  ProfileSubstance({
    this.id,
    this.drugId,
    this.profileDetailId,
    this.substanceId,
    this.substance,
  });

  factory ProfileSubstance.fromJson(Map<String, dynamic> json) =>
      _$ProfileSubstanceFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileSubstanceToJson(this);
}
