import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:take_home_test/models/search.dart';

class UrlService {

  final String _apiUrl = "https://url-shortener-nu.herokuapp.com/api/alias";

  Map<String,String> _headers = {
    'Content-type' : 'application/json',
    'Accept': 'application/json',
  };

  Future<Search> createShortenUrl(String url) async {
    final response = await http
        .post(Uri.parse(_apiUrl), headers: _headers, body: json.encode({"url" : "$url"}));

    if (response.statusCode == 200) {
      // If the server did return a 201 OK response,
      // then parse the JSON.
      final body = jsonDecode(response.body);
      return Search.fromJson(body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to create shorten url');
    }
  }

  Future<Search> getShorten() async {
    final response = await http
        .post(Uri.parse(_apiUrl), body: {});

    if (response.statusCode == 201) {
      // If the server did return a 201 OK response,
      // then parse the JSON.
      print(Search.fromJson(jsonDecode(response.body)));
      return Search.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to create shorten url');
    }
  }
}