import 'package:flutter/material.dart';

import './images.dart';

class ButtonManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ButtonManager();
  }
}

class _ButtonManager extends State<ButtonManager>{

  final List<String> images = ['assets/img1.png', 'assets/img2.jpg'];
  String name  = "";
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
            Images(name)
            ,
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                   name =images[counter%2];
                   counter++;
                  });
                },
                child: Text("Change Image"),
              ),
            ),
          ]);
  }
}
