import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/constants/route_names.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.images.welcomeBg.path,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: mediumPaddingTOp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello!',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                ),
                const SizedBox(
                  height: paddingtTop,
                ),
                Text(
                  'Check what we have\n prepared for you',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: mediumPaddingTOp,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: kMargin),
                  child: UIButton(
                    title: 'Start',
                    onPressed: () {
                      context.go(RouteNames.menuHome);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
