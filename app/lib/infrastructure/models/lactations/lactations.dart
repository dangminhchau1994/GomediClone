import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lactations.g.dart';

@JsonSerializable()
class Lactations extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? enumKey;
  final bool? isActive;

  const Lactations({
    this.id,
    this.name,
    this.description,
    this.enumKey,
    this.isActive,
  });

  factory Lactations.fromJson(Map<String, dynamic> json) =>
      _$LactationsFromJson(json);

  Map<String, dynamic> toJson() => _$LactationsToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        enumKey,
        isActive,
      ];
}
