import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_test/providers/search_provider.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newUrlSearch;
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              hintText: 'Enter a url',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )
            ),
            onChanged: (newSearch) {
              newUrlSearch = newSearch;
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.purple),
            ),
            child: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Provider.of<SearchData>(context, listen: false)
                  .publishShortenUrl(newUrlSearch);
            },
          ),
        ),
      ],
    );
  }
}
