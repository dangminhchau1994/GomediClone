import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({
    super.key,
    this.backgroundColor,
    this.title,
    this.iconPath,
    this.onPressed,
  });

  final Color? backgroundColor;
  final String? title;
  final String? iconPath;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: key,
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              iconPath ?? '',
              color: Colors.white,
              height: 30,
            ),
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white,
                  ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
