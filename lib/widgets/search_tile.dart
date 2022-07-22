import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final String selfUrl;
  final String shortUrl;
  final String alias;

  SearchTile({this.selfUrl, this.shortUrl, this.alias});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.public_sharp),
      title: Row(
        children: [
          Text(
            selfUrl,
            style: TextStyle(
                fontSize: 18.0,
            fontWeight: FontWeight.bold),
          ),
          Text(
            ' - $alias',
            style: TextStyle(
                fontSize: 18.0),
          ),
        ],
      ),
      subtitle: Text(
        shortUrl,
        style: TextStyle(
          fontSize: 14.0
        ),
      ),
    );
  }
}
