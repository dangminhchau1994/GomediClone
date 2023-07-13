import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_eans.g.dart';

@JsonSerializable()
class DrugEans extends Equatable {
  final int? id;
  final String? ean;
  final int? drugId;

  const DrugEans({
    this.id,
    this.ean,
    this.drugId,
  });

  factory DrugEans.fromJson(Map<String, dynamic> json) =>
      _$DrugEansFromJson(json);

  Map<String, dynamic> toJson() => _$DrugEansToJson(this);

  @override
  List<Object?> get props => [
        id,
        ean,
        drugId,
      ];
}
