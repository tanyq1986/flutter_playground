import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/Search.dart';
import 'package:flutter_app01/pages/tabs/Form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search',arguments: {'item':'google.com'});
            },
            child: Text('go to Search'),
          ),
          RaisedButton(
            onPressed: () {
                  Navigator.of(context)
                  .push(MaterialPageRoute(
                       builder: (context) => FormPage(),
                       settings: RouteSettings(arguments: {'name':'dongdong'})
                    )
                    );
            },
            child: Text('go to Form page with Param'),
          ),
        ],
      ),
    );
  }
}
