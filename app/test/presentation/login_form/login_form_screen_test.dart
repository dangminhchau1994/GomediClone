import 'package:app/presentation/login_form/login_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'check login form screen is available',
    (tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginFormScreen()));

      final forgotPassword = find.text('I forgot my password');
      final buttonWidgets = find.byType(ElevatedButton);

      expect(forgotPassword, findsOneWidget);
      expect(buttonWidgets, findsWidgets);
    },
  );
}
