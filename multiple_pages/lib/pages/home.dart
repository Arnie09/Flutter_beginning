import 'package:flutter/material.dart';

import './page1.dart';
import './page2.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Multiple Pages'),
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
            child: Card(
                color: Colors.white,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text("This yo home page!"),
                    RaisedButton(
                      color: Colors.lightGreen,
                      child: Text("PAGE 1"),
                      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Page_one())),
                    ),
                    RaisedButton(
                      color: Colors.lightGreen,
                      child: Text("PAGE 2"),
                      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Page_two())),
                    )
                  ],
                )))));
  }
}
