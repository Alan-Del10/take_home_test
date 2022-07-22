import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_test/providers/search_provider.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _text = TextEditingController();
    return Consumer<SearchData>(builder: (context, searchData, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              controller: _text,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                icon: Icon(Icons.public_sharp, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                errorText: searchData.isValid ? 'Url Can\'t Be Empty' : null,
                errorStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                hintText: 'Enter a url',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.white,
                padding: EdgeInsets.all(16),
              ),
              child: Icon(
                Icons.send,
                size: 30.0,
                color: Colors.purple,
              ),
              onPressed: () {
                if (null == _text.text || _text.text.isEmpty) {
                  Provider.of<SearchData>(context, listen: false).setIsValid();
                } else {
                  Provider.of<SearchData>(context, listen: false)
                      .publishShortenUrl(_text.text);
                  _text.clear();
                }
              },
            ),
          ),
        ],
      );
    });
  }
}
