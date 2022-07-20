import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_test/providers/search_provider.dart';
import 'package:take_home_test/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchData(),
      child: MaterialApp(
        title: 'Take-Home Test',
        home: SearchScreen(),
      ),
    );
  }
}
