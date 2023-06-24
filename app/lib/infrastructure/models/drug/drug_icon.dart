import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_icon.g.dart';

@JsonSerializable()
class DrugIcon extends Equatable {
  final int? id;
  final String? iconPath;
  final bool? isDivisible;
  final int? drugTypeId;

  const DrugIcon({
    this.id,
    this.iconPath,
    this.isDivisible,
    this.drugTypeId,
  });

  factory DrugIcon.fromJson(Map<String, dynamic> json) =>
      _$DrugIconFromJson(json);

  Map<String, dynamic> toJson() => _$DrugIconToJson(this);

  @override
  List<Object?> get props => [
        id,
        iconPath,
        isDivisible,
        drugTypeId,
      ];
}
