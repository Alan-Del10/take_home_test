import 'links.dart';

class Search {
  final String alias;
  final Links links;

  Search({this.alias, this.links});

  factory Search.fromJson(Map<String, dynamic> json) {
    return Search(
      alias: json['alias'],
      links: Links.fromJson(json['_links']),
    );
  }

  @override
  String toString() {
    return '${this.alias} ${this.links}';
  }
}
