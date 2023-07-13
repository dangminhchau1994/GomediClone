import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:app/infrastructure/models/drug_profile/drug_profile_weekday.dart';
import 'package:app/presentation/drug/widget/drug_list_weekdays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/widgets/ui_primary_button.dart';

class DrugWeekdaysInput extends StatefulWidget {
  const DrugWeekdaysInput({super.key});

  @override
  State<DrugWeekdaysInput> createState() => _DrugWeekdaysInputState();
}

class _DrugWeekdaysInputState extends State<DrugWeekdaysInput> {
  var weekdays = <DrugProfileWeekDays>[];

  Future<void> _showBottomSheet() {
    final dialog = showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      builder: (buidContext) {
        return SizedBox(
          height: 400,
          child: Stack(
            fit: StackFit.expand,
            children: [
              DrugListWeekdays(
                weekdays: DrugProfileWeekDays.getDrugProfileWeekDays()
                    .map((e) => BottomItem(
                          id: e.weekDayId,
                          title: e.title,
                          isChecked: false,
                        ))
                    .toList(),
                updateWeekdays: (newWeekdays) {
                  weekdays = newWeekdays
                      .where((element) => element.isChecked == true)
                      .map((e) => DrugProfileWeekDays(
                            id: e.id,
                            title: e.title,
                            weekDayId: e.id,
                          ))
                      .toList();
                },
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: paddingtTop),
                  padding: const EdgeInsets.all(paddingAll),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: UIButton(
                            isPrimaryButton: false,
                            title: 'Cancel',
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: UIButton(
                            title: 'OK',
                            onPressed: () {
                              Navigator.of(context).pop();
                              context
                                  .read<DrugBloc>()
                                  .add(DrugEvent.addWeekdays(weekdays));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    return dialog;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Days',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        GestureDetector(
          onTap: () => _showBottomSheet(),
          child: BlocBuilder<DrugBloc, DrugState>(
            builder: (context, state) {
              var weekday = '';
              var drugProfieWeekdays = state.drugProfieWeekdays ?? [];
              for (var i = 0; i < drugProfieWeekdays.length; i++) {
                weekday += '${drugProfieWeekdays[i].title},';
              }

              return Container(
                padding: const EdgeInsets.all(paddingAll),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        weekday,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
