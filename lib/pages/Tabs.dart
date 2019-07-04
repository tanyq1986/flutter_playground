import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/tabs/Category.dart';
import 'package:flutter_app01/pages/tabs/Home.dart';
import 'package:flutter_app01/pages/tabs/Setting.dart';
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
            setState(() {
              this._currentIndex = index;
              print(this._currentIndex);
            });
        },
        currentIndex: this._currentIndex,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home) ,
            title:Text('Home')
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.category) ,
            title:Text('Category')
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.settings) ,
            title:Text('Setting')
          ),
        ],
      ),
      body: tabs[this._currentIndex],
    );
  }
}