
import 'package:flutter/material.dart';
class FormPage extends StatelessWidget {
  const FormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context
    ).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('form')
        ),
      body: Text("this is from by ${args['name']}")
    );
  }
}