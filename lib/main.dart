import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
                padding: EdgeInsets.all(8.0), sliver: SliverListDemo()),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final url = "https://www.itying.com/images/flutter/${index + 1}.png";
          print(url);
          return Container(
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: 3,
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final url = "https://www.itying.com/images/flutter/${index + 1}.png";
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
              )
            ),
          );
        },
        childCount: 3,
      ),
    );
  }
}
