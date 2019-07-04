import 'package:flutter/material.dart';
class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>  with SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(
      vsync: this,
      length: 2
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('tabbarcontroller'),
           bottom: TabBar(
             controller: this._tabController,
             tabs: <Widget>[
               Tab(text: 'hot'),
               Tab(text:'guess you like')
             ],
           ),
         ),
         body: TabBarView(
           controller: this._tabController,
           children: <Widget>[
             Center(child: Text('hot')),
             Center(child: Text('guess you like'))
           ],
         )
       ),
    );
  }
}