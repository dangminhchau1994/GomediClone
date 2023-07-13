import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'prenancy.g.dart';

@JsonSerializable()
class Pregnancy extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? enumKey;
  final bool? isActive;

  const Pregnancy({
    this.id,
    this.name,
    this.description,
    this.enumKey,
    this.isActive,
  });

  factory Pregnancy.fromJson(Map<String, dynamic> json) =>
      _$PregnancyFromJson(json);

  Map<String, dynamic> toJson() => _$PregnancyToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        enumKey,
        isActive,
      ];
}
