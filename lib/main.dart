import 'package:flutter/material.dart';
import 'package:tryflutter/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blueGrey), home: HomePage());
  }
}
