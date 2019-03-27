import 'package:flutter/material.dart';

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
                      onPressed: () => {},
                    ),
                    RaisedButton(
                      child: Text("PAGE 2"),
                      onPressed: () => {},
                    )
                  ],
                )))));
  }
}
