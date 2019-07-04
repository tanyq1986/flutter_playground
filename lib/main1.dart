import 'package:flutter/material.dart';
import 'res/listData.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('flutter demo'),
            ),
            body: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  Widget _getListData(context,index) {
       return Container(
         child:Column(
           children: <Widget>[
             Image.network(ListData[index]['imageUrl']),
             SizedBox(height: 10),
             Text(ListData[index]['title'],
             style: TextStyle(
               fontSize: 18,
             ),)
           ],
           ),
          decoration: BoxDecoration(
            border:Border.all(
              color: Color.fromRGBO(233, 233, 233, 0.9),
              width: 1
            )
          )
           );
  }


 
  @override
  Widget build(BuildContext context) {

    return Padding(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 2
        ),
        itemCount: ListData.length,
        itemBuilder:this._getListData
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
