import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  final String taskTitle;

  SearchTile({this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: TextDecoration.lineThrough),
      ),
    );
  }
}
