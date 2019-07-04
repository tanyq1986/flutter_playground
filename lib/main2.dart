import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('layout')),
      body: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 130.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Container(
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/6.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      flex: 2),
                  Expanded(
                      child: Container(
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.network(
                                "https://www.itying.com/images/flutter/1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                             Expanded(
                              child: Image.network(
                                "https://www.itying.com/images/flutter/2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),)
                ],
              ))
        ],
      ),
      height: 400,
      color: Colors.yellow,
    );
  }
}
