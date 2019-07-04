import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: TabBar(
                   tabs: <Widget>[
                   Tab(text: 'hot'),
                    Tab(text: 'guess you like',)
            ],
           ),
              )
            ],
          ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                color: Colors.pinkAccent,
              ),
              Container(
                color: Colors.green,
              )
            ],
          ),
      ),
    );
  }
}