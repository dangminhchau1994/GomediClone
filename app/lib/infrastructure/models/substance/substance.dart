import 'package:freezed_annotation/freezed_annotation.dart';

part 'substance.g.dart';

@JsonSerializable()
class Substance {
  final int? id;
  final String? name;
  final String? description;
  final String? enumKey;
  final bool? isActive;

  Substance({
    this.id,
    this.name,
    this.description,
    this.enumKey,
    this.isActive,
  });

  factory Substance.fromJson(Map<String, dynamic> json) =>
      _$SubstanceFromJson(json);

  Map<String, dynamic> toJson() => _$SubstanceToJson(this);
}
