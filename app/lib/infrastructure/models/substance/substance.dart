import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'substance.g.dart';

@JsonSerializable()
class Substance extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? enumKey;
  final bool? isActive;

  const Substance({
    this.id,
    this.name,
    this.description,
    this.enumKey,
    this.isActive,
  });

  factory Substance.fromJson(Map<String, dynamic> json) =>
      _$SubstanceFromJson(json);

  Map<String, dynamic> toJson() => _$SubstanceToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        enumKey,
        isActive,
      ];
}
