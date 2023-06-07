import 'package:app/application/theme/ui_color.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UIAppbar extends StatelessWidget implements PreferredSize {
  const UIAppbar({
    super.key,
    this.showBadge,
    this.showArrow,
    this.title,
  });

  final bool? showBadge;
  final bool? showArrow;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: title == null,
      leading: Visibility(
        visible: showArrow ?? false,
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      title: title == null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Assets.images.logoTextPng.path,
                width: 150,
                height: 150,
              ),
            )
          : Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
            ),
      actions: [
        Visibility(
          visible: showBadge ?? true,
          child: IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                color: UIColors.blue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.notifications,
                  size: 24,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
