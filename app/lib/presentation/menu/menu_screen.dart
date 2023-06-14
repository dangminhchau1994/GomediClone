import 'package:app/application/constants/dimensions.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/presentation/menu/widgets/menu_row.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.images.addDrugBg.path,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: kMargin,
              vertical: kMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuRow(
                  title: 'Add medicine',
                  onTap: () {},
                ),
                const SizedBox(
                  height: paddingtTop,
                ),
                MenuRow(
                  title: 'Add measurement',
                  isVisible: true,
                  onTap: () {},
                ),
                const SizedBox(
                  height: paddingtTop,
                ),
                MenuRow(
                  title: 'Add a note',
                  onTap: () {},
                ),
                const SizedBox(
                  height: paddingtTop,
                ),
                MenuRow(
                  title: 'Add appointment',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
