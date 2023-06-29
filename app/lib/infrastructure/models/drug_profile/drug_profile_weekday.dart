import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_profile_weekday.g.dart';

@JsonSerializable()
class DrugProfileWeekDays extends Equatable {
  final int? id;
  final int? weekDayId;

  const DrugProfileWeekDays({
    this.id,
    this.weekDayId,
  });

  factory DrugProfileWeekDays.fromJson(Map<String, dynamic> json) =>
      _$DrugProfileWeekDaysFromJson(json);

  Map<String, dynamic> toJson() => _$DrugProfileWeekDaysToJson(this);

  @override
  List<Object?> get props => [
        id,
        weekDayId,
      ];
}
