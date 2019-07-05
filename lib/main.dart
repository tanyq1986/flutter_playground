import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "input here"
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password"
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "input username"
                  ),
                )
              ],
            ),
          ),
        ),
        theme: ThemeData(primarySwatch: Colors.yellow,),
    );
  }
}