import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/Routes.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: routes,
        initialRoute: '/',
        theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}