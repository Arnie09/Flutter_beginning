import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Pages'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text("Homepage this is!"),
        ]),
      ),
    );
  }
}
