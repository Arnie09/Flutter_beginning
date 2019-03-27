import 'package:flutter/material.dart';

import './page1.dart';

class Page_two extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
            child: Card(
                color: Colors.blueGrey[50],
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text("Youre in page 2 buddy!"),
                    RaisedButton(
                      child: Text("Page 1"),
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Page_one()))
                      },
                    ),
                    RaisedButton(
                      child: Text("Home"),
                      onPressed: (){
                        Navigator.pop(context);
                       },
                    ),
                  ],
                )))));
  }
}