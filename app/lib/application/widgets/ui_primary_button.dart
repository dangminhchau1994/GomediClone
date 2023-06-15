import 'package:app/application/theme/ui_color.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UIButton extends StatelessWidget {
  const UIButton({
    super.key,
    this.title,
    this.isPrimaryButton = true,
    this.isScanButton,
    this.width,
    this.onPressed,
  });

  final String? title;
  final double? width;
  final bool? isPrimaryButton;
  final bool? isScanButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(
                isPrimaryButton! ? UIColors.blue : Colors.transparent,
              ),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: isScanButton ?? false,
              child: SvgPicture.asset(Assets.images.qrIcon),
            ),
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: isPrimaryButton! ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
