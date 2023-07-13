import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/utils/time_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/constants/dimensions.dart';
import '../../../application/widgets/ui_primary_button.dart';

class DrugDurationInput extends StatefulWidget {
  const DrugDurationInput({
    super.key,
    this.bloc,
  });

  final DrugBloc? bloc;

  @override
  State<DrugDurationInput> createState() => _DrugDurationInputState();
}

class _DrugDurationInputState extends State<DrugDurationInput> {
  Widget _buidDateLable(String lable) {
    return Text(
      lable,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    );
  }

  Widget _buildDatePicker({bool? isStartDate}) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 150,
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (DateTime value) {
            if (isStartDate!) {
              context.read<DrugBloc>().add(
                    DrugEvent.addStartDate(
                      TimeUtils.convertToDate(value),
                    ),
                  );
            } else {
              context.read<DrugBloc>().add(
                    DrugEvent.addEndDate(
                      TimeUtils.convertToDate(value),
                    ),
                  );
            }
          },
        ),
      ),
    );
  }

  Future<void> _showBottomSheet() {
    final dialog = showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(1),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      builder: (buidContext) {
        return BlocProvider.value(
          value: widget.bloc!,
          child: BlocBuilder<DrugBloc, DrugState>(
            builder: (context, state) {
              return SizedBox(
                height: 500,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.all(paddingAll),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buidDateLable('Start Date'),
                              const SizedBox(
                                height: paddingtTop,
                              ),
                              _buildDatePicker(isStartDate: true),
                              const SizedBox(
                                height: paddingtTop,
                              ),
                              _buidDateLable('End Date'),
                              const SizedBox(
                                height: paddingtTop,
                              ),
                              Center(
                                child: state.showEndDatePicker ?? false
                                    ? _buildDatePicker(isStartDate: false)
                                    : UIButton(
                                        isPrimaryButton: true,
                                        title: 'Enable end date',
                                        onPressed: () {
                                          context.read<DrugBloc>().add(
                                              const DrugEvent.showEndDatePicker(
                                                  true));
                                        },
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                                    context.read<DrugBloc>().add(
                                        DrugEvent.addDateDuration(
                                            '${state.startDate ?? TimeUtils.convertToDate(DateTime.now())}-${state.endDate ?? ''}'));
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
          'Duration',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        GestureDetector(
          onTap: () => _showBottomSheet(),
          child: Container(
            padding: const EdgeInsets.only(
              bottom: paddingtTop,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.5, color: Colors.black),
              ),
            ),
            child: BlocBuilder<DrugBloc, DrugState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        state.durationDate ??
                            TimeUtils.convertToDate(DateTime.now()),
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
