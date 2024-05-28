//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pharmacy_app/main.dart';


void main() {
  testWidgets('Login Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that the login button is present
    expect(find.text('Login'), findsOneWidget);
  });
}
