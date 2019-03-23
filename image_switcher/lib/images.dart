import 'package:flutter/material.dart';

class Images extends StatelessWidget{

  final String name;
  Images(this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
              child: Column(
                children: <Widget>[
                Image.asset(name),
                Text(name)
              ]),
            );
  }
}


