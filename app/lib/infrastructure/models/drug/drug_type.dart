import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_type.g.dart';

@JsonSerializable()
class DrugType extends Equatable {
  final int? id;
  final String? name;

  const DrugType({
    this.id,
    this.name,
  });

  factory DrugType.fromJson(Map<String, dynamic> json) =>
      _$DrugTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DrugTypeToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
