import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_priority.g.dart';

@JsonSerializable()
class DrugPriority extends Equatable {
  final int? id;
  final String? name;
  final String? description;

  const DrugPriority({
    this.id,
    this.name,
    this.description,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
      ];

  factory DrugPriority.fromJson(Map<String, dynamic> json) =>
      _$DrugPriorityFromJson(json);

  Map<String, dynamic> toJson() => _$DrugPriorityToJson(this);
}
