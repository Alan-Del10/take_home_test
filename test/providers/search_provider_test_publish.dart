// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:take_home_test/providers/search_provider.dart';


void main() {
  test('SearchData test', () async {
    // Build our app and trigger a frame.
    final searchData = SearchData();

    ///Test publish function with www.google.com value
    searchData.publishShortenUrl("www.google.com");
    expect(searchData.isValid, false);
  });
}