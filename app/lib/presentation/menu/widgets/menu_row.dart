import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    super.key,
    this.title,
    this.isVisible,
    this.onTap,
  });

  final String? title;
  final bool? isVisible;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(
                  color: UIColors.blue,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.add,
                      color: UIColors.blue,
                    ),
                    Text(
                      title ?? '',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: kMargin,
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Icon(
                Icons.remove_red_eye_outlined,
                color: UIColors.blue,
              ),
              const SizedBox(
                width: kMargin,
              ),
              Visibility(
                visible: isVisible ?? false,
                child: Icon(
                  Icons.settings,
                  color: UIColors.blue,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
