import 'package:flutter/material.dart';
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final Map args = ModalRoute.of(context
    ).settings.arguments;
    return Scaffold(
      appBar: AppBar(
              title: Text('Search'),
       ),
       body: Text("i am searching:${args != null?(args['item']??''):''}"),
    );
  }
}