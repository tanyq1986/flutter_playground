
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _sex = 2;
  String usename;
  final  data = [
       {
       'checked':false,
       'title':'swimming'
       },
       {
       'checked':false,
       'title':'football'
       },
       {
       'checked':false,
       'title':'basketball'
       },
       {
       'checked':true,
       'title':'golf'
       },
     ];
  List<Widget> _getHobby() {
     
     final list = data.map((value)=> Row(
         children: <Widget>[
            Text(value['title']),
            SizedBox(width: 10),
            Checkbox(
              value: value['checked'],
              onChanged: (v){
                setState(() {
                  value['checked'] = v;
                });
              },
            )
         ],
     ));
     return list.toList();
  }

   String get hobbies => data.where((v)=>v['checked']).map((v) => v['title']).join(' ');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('学员信息登记')
        ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'username'),
                onChanged: (v){
                  this.usename = v;
                },
                ),
              
            Row(
              children: <Widget>[
                Text("body"),
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                        this._sex = v; 
                      });
                  },
                  groupValue: this._sex,
                ),
                SizedBox(width: 10),
                Text("girl"),
                Radio(
                  value: 2,
                  onChanged: (v){
                      setState(() {
                        this._sex = v; 
                      });
                  },
                  groupValue: this._sex,
                )
              ],
            ),
            SizedBox(height: 20),
            
           
            Column(
              children: _getHobby(),
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("clik"),
                onPressed: (){
                  
                },
               
                color: Colors.blue),
            ),
            SizedBox(height: 20),
            Text("my hoby is ${this.hobbies}")
          ],
        ),
      )
    );
  }
}