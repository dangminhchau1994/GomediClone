import 'package:app/application/app/app_view.dart';
import 'package:app/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('find the root widget', (tester) async {
    await tester.pumpWidget(const App());
  });

  testWidgets('find the login screen', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );

    expect(find.text('Register'), findsOneWidget);
    expect(find.text('Register z Google'), findsOneWidget);
    expect(find.text('Register z Facebook'), findsOneWidget);
  });
}
