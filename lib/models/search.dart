import 'links.dart';

class Search {
  final String alias;
  final dynamic links;

  Search({this.alias = "", this.links});

  factory Search.fromJson(Map<String, dynamic> json) {
    return Search(
      alias: json['alias'],
      links: json['_links'],
    );
  }

  @override
  String toString() {
    return '${this.alias} ${this.links}';
  }
}
