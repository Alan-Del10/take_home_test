import 'package:flutter/material.dart';
import 'package:take_home_test/models/search.dart';
import 'package:take_home_test/providers/search_provider.dart';
import 'package:take_home_test/widgets/search_tile.dart';
import 'package:provider/provider.dart';

import 'search_tile.dart';

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SearchData>(
      builder: (context, searchData, child) {
        return searchData.searches.length > 0 ? ListView.builder(
          itemBuilder: (context, index) {
            Search search = searchData.searches[index];
            return Card(
              elevation: 12,
              child: SearchTile(
                alias: search.alias,
                selfUrl: search.links.self,
                shortUrl: search.links.short,
              ),
            );
          },
          itemCount: searchData.searchesCount,
        ) : Container(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'No Recent Searches',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}
