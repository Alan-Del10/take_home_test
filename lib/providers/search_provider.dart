import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:take_home_test/models/search.dart';
import 'package:take_home_test/services/url_service.dart';

class SearchData extends ChangeNotifier {

  UrlService urlService = UrlService();

  List<Search> _searches = [];

  int get searchesCount => _searches?.length ?? 0;

  UnmodifiableListView<Search> get searches => UnmodifiableListView(_searches);

  bool isValid = false;

  //This function helps us to validate if the given url is empty to prevent send it to our api request
  void setIsValid(){
    isValid = !isValid;
    notifyListeners();
  }

  //This function needs the url to send it to our UrlService class to make the request to the API
  //@param String url
  void publishShortenUrl(String url) {
      try {
        urlService.createShortenUrl(url).then((Search value) {
          isValid = false;
          Search search = Search();
          search = value;
          _searches.add(search);
          notifyListeners();
        });
      } catch (e) {
        Exception('Cannot added shorten url');
      }
  }
}
