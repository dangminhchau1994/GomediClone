import 'package:app/application/constants/string_constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../application/constants/dimensions.dart';
import '../../../application/widgets/ui_primary_button.dart';
import '../../../application/widgets/ui_text_input.dart';

class DrugTimeOoseInput extends StatefulWidget {
  const DrugTimeOoseInput({super.key});

  @override
  State<DrugTimeOoseInput> createState() => _DrugTimeOoseInputState();
}

class _DrugTimeOoseInputState extends State<DrugTimeOoseInput> {
  final formKey = GlobalKey<FormState>();

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
      builder: (context) {
        return SizedBox(
          height: 400,
          child: Form(
            key: formKey,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Positioned.fill(
                  child: DrugTimeDose(
                    doseCount: 5,
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
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).pop();
                                }
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
          'Time and dose',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        GestureDetector(
          onTap: () async => _showBottomSheet(),
          child: Container(
            padding: const EdgeInsets.all(paddingAll),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DrugTimeDose extends StatefulWidget {
  const DrugTimeDose({
    super.key,
    this.doseCount,
  });

  final int? doseCount;

  @override
  State<DrugTimeDose> createState() => _DrugTimeDoseState();
}

class _DrugTimeDoseState extends State<DrugTimeDose>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Time and dose',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const Divider(
              height: 0.5,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: ListView.builder(
            itemCount: widget.doseCount,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingLeft,
                vertical: paddingLeft,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dose: ${index + 1}',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 100,
                        child: CupertinoTimerPicker(
                          mode: CupertinoTimerPickerMode.hm,
                          onTimerDurationChanged: (Duration value) {},
                        ),
                      ),
                      const SizedBox(
                        width: paddingLeft,
                      ),
                      SizedBox(
                        width: 100,
                        child: UITextInput(
                          textHint: 'dose',
                          onChanged: (value) {},
                          validator: (value) {
                            if (value.isEmpty) {
                              return StringConstants.emptyInput;
                            } else {
                              return null;
                            }
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
