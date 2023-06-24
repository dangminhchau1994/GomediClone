import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_color.g.dart';

@JsonSerializable()
class DrugColor extends Equatable {
  final int? id;
  final String? rgb;

  const DrugColor({
    this.id,
    this.rgb,
  });

  factory DrugColor.fromJson(Map<String, dynamic> json) =>
      _$DrugColorFromJson(json);

  Map<String, dynamic> toJson() => _$DrugColorToJson(this);

  @override
  List<Object?> get props => [
        id,
        rgb,
      ];
}
