// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:take_home_test/widgets/search_field.dart';

void main() {
  testWidgets('SearchField test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SearchField());

    ///Test to enter empty value
    await tester.enterText(find.byType(TextField), "");

    // Tap the add button.
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Verify that values is on the ListBuilder.
    expect(find.text(""), findsOneWidget);
  });
}
