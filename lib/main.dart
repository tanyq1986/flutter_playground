import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('FlutterDemo'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'hot',),
                Tab(text: 'trend')
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('hello'),
                  )
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('world'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
        theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}