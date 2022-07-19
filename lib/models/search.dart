import 'links.dart';

class Search {
  final String alias;
  final List<Links> links;

  Search({this.alias, this.links});

  factory Search.fromJson(Map<String, dynamic> json) {
    return Search(
      alias: json['alias'],
      links: json['_links'],
    );
  }
}