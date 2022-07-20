import 'package:flutter/material.dart';
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
            final task = searchData.searches[index];
            return SearchTile(
              taskTitle: task.alias,
            );
          },
          itemCount: searchData.searchesCount,
        ) : Container(
          child: Text(
            'No Recent Searches',

          ),
        );
      },
    );
  }
}
