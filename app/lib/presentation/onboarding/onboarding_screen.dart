import 'package:app/application/constants/route_names.dart';
import 'package:app/application/utils/share_preferences.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top * 4,
            ),
            child: Text(
              'Supporting in taking medications\n\nGet notifications about your drugs and your\n loved ones',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom * 4,
            left: 20,
            right: 20,
            child: UIButton(
              onPressed: () {
                SharePref().setOnboarding('onboard');
                context.go(RouteNames.login);
              },
              title: 'Start',
            ),
          ),
        ],
      ),
    );
  }
}
