import 'package:freezed_annotation/freezed_annotation.dart';
part 'lactations.g.dart';

@JsonSerializable()
class Lactations {
  final int? id;
  final String? name;
  final String? description;
  final String? enumKey;
  final bool? isActive;

  Lactations({
    this.id,
    this.name,
    this.description,
    this.enumKey,
    this.isActive,
  });

  factory Lactations.fromJson(Map<String, dynamic> json) =>
      _$LactationsFromJson(json);

  Map<String, dynamic> toJson() => _$LactationsToJson(this);
}
