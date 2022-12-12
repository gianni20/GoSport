import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final colore_standard = Color.fromRGBO(49, 189, 38, 1.0);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'GoSport',
        theme: ThemeData(
          primaryColor: colore_standard,
        ),
        home: MyHomePage(),
      );
    }
  }