import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_home_test/constants/common_constants.dart';
import 'package:take_home_test/models/search.dart';
import 'package:take_home_test/services/url_service.dart';

class SearchController extends GetxController{

  static SearchController get to => Get.find();

  UrlService urlService = UrlService();

  List<Search> _searches;

  int get searchesCount => _searches.length;

  UnmodifiableListView<Search> get searches => UnmodifiableListView(_searches);

  void publishShortenUrl(String url) {
    try {
      urlService.createShortenUrl(url).then((value){
        _searches.add(value);
        update([CommonConstants.listWidget]);
      });
    } catch (e) {
      Exception('Cannot added shorten url');
    }
  }
}