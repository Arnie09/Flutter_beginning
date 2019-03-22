import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  List<String> images = ['assets/img1.png', 'assets/img2.jpg'];
  String name = "";
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Image Switcher'),
          ),
          body: Column(children: [
            Card(
              child: Column(
                children: <Widget>[
                Image.asset(name),
                Text(name)
              ]),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                   if (state == true) {
                    name = images[0];
                    state = false;
                    print(name);
                  } else {
                    name = images[1];
                    state = true;
                    print(name);
                  } 
                  });
                },
                child: Text("Change Image"),
              ),
            ),
          ]),
        ));
  }
}
