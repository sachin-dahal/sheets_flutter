import 'package:flutter/material.dart';
import 'package:sheets_flutter/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Sheets Data",
      home: HomePage(),
    );
  }
}