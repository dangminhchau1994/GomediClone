import 'package:app/application/theme/ui_color.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class UIAppbar extends StatelessWidget implements PreferredSize {
  const UIAppbar({
    super.key,
    this.showBadge,
    this.title,
  });

  final bool? showBadge;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: title == null,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          Assets.images.logoTextPng.path,
          width: 150,
          height: 150,
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
                  color: UIColors.lightGrey,
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