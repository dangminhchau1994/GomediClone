import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../application/constants/dimensions.dart';
import '../../../application/widgets/ui_primary_button.dart';

class DrugDurationInput extends StatefulWidget {
  const DrugDurationInput({super.key});

  @override
  State<DrugDurationInput> createState() => _DrugDurationInputState();
}

class _DrugDurationInputState extends State<DrugDurationInput> {
  bool showDatePicker = false;

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
          height: 500,
          child: Form(
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
                          Text(
                            'Start Date',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                          ),
                          const SizedBox(
                            height: paddingtTop,
                          ),
                          Center(
                            child: SizedBox(
                              width: 300,
                              height: 100,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                onDateTimeChanged: (DateTime value) {},
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: paddingtTop,
                          ),
                          Text(
                            'End Date',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                          ),
                          const SizedBox(
                            height: paddingtTop,
                          ),
                          Center(
                            child: showDatePicker
                                ? SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (DateTime value) {},
                                    ),
                                  )
                                : UIButton(
                                    isPrimaryButton: true,
                                    title: 'Enable end date',
                                    onPressed: () {
                                      setState(() {
                                        showDatePicker = true;
                                      });
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
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    '27-03-2023',
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
            ),
          ),
        ),
      ],
    );
  }
}
