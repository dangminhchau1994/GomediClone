import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  const UIButton({
    super.key,
    this.title,
    this.isPrimaryButton = true,
    this.onPressed,
  });

  final String? title;
  final bool? isPrimaryButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        key: key,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(
                isPrimaryButton! ? UIColors.blue : Colors.transparent,
              ),
            ),
        onPressed: onPressed,
        child: Text(
          title ?? '',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: isPrimaryButton! ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
        ),
      ),
    );
  }
}
