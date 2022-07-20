import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:take_home_test/constants/common_constants.dart';
import 'package:take_home_test/models/search.dart';
import 'package:take_home_test/services/url_service.dart';

class SearchData extends ChangeNotifier {

  // static SearchController get to => Get.find();

  UrlService urlService = UrlService();

  List<Search> _searches = [
    Search()
  ];

  int get searchesCount => _searches?.length ?? 0;

  UnmodifiableListView<Search> get searches => UnmodifiableListView(_searches);

  void publishShortenUrl(String url) {
    print(url);
    try {
      // urlService.createShortenUrl(url).then((Search value){
      //   final search = Search();
      //   _searches.add(value);
      //   notifyListeners();
      // });
    } catch (e) {
      Exception('Cannot added shorten url');
    }
  }
}