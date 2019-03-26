import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final String name;
  Images(this.name);

  @override
  Widget build(BuildContext context) {
    return name != ""
        ? Card(
            color: Colors.purple[600],
            child: Column(children: <Widget>[Image.asset(name), Text(name)]),
          )
        : Card(
            color: Colors.purple[600],
            child: Center(
                child: Column(
              children: <Widget>[Text("Nothing to show!")],
            )));
  }
}
