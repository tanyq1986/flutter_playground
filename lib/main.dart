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
       height: 400,
       color: Colors.yellow,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [Container(
                   height: 130.0,
                  color: Colors.black,
          ),
          Container(
              height: 200,
            
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: SizedBox.expand(
                                child:Image.network(
                                "https://www.itying.com/images/flutter/4.png",
                                fit: BoxFit.cover,
                               ) ,
                              ),
                      ),
                      flex: 2),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: 
                              SizedBox.expand(
                                child:Image.network(
                                "https://www.itying.com/images/flutter/1.png",
                                fit: BoxFit.cover,
                              ) ,
                              ),
                            ),
                            SizedBox(height: 10),
                             Expanded(
                              child: SizedBox.expand(
                                child:Image.network(
                                "https://www.itying.com/images/flutter/2.png",
                                fit: BoxFit.cover,
                               )
                              ),
                            ),
                          ],
                        ),
                      ),)
                ],
              ))
        ],
      ),
    );
  }
}
