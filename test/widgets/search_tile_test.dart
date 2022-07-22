// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:take_home_test/models/search.dart';
import 'package:take_home_test/services/url_service.dart';

void main() {
  test('SearchTile test', () async {
    // Build our app and trigger a frame.
    final urlService = UrlService();

    ///Test with null parameter
    Search testingResult = await urlService.createShortenUrl("");

    expect(testingResult.alias, "");
  });
}
