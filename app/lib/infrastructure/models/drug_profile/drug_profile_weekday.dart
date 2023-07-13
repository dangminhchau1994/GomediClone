import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drug_profile_weekday.g.dart';

@JsonSerializable()
class DrugProfileWeekDays extends Equatable {
  final int? id;
  final int? weekDayId;
  final String? title;

  const DrugProfileWeekDays({
    this.id,
    this.weekDayId,
    this.title,
  });

  factory DrugProfileWeekDays.fromJson(Map<String, dynamic> json) =>
      _$DrugProfileWeekDaysFromJson(json);

  Map<String, dynamic> toJson() => _$DrugProfileWeekDaysToJson(this);

  @override
  List<Object?> get props => [id, weekDayId];

  static List<DrugProfileWeekDays> getDrugProfileWeekDays() {
    return const [
      DrugProfileWeekDays(
        weekDayId: 1,
        title: 'Everyday',
      ),
      DrugProfileWeekDays(
        weekDayId: 2,
        title: 'Monday',
      ),
      DrugProfileWeekDays(
        weekDayId: 3,
        title: 'Tuesday',
      ),
      DrugProfileWeekDays(
        weekDayId: 4,
        title: 'Wednesday',
      ),
      DrugProfileWeekDays(
        weekDayId: 5,
        title: 'Thursday',
      ),
      DrugProfileWeekDays(
        weekDayId: 6,
        title: 'Friday',
      ),
      DrugProfileWeekDays(
        weekDayId: 8,
        title: 'Saturday',
      ),
      DrugProfileWeekDays(
        weekDayId: 9,
        title: 'Sunday',
      ),
    ];
  }
}
