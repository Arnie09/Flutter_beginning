import 'package:flutter/material.dart';

import './page2.dart';

class Page_one extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
            child: Card(
                color: Colors.blueGrey,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text("Youre in page 1 buddy!"),
                    RaisedButton(
                      child: Text("Page2"),
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Page_two()));
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