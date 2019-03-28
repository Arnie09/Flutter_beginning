import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Info'),
        ),
        body: Container(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              height: 50,
              child: Card(
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
                color: Colors.blueGrey[100],
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text("This app was made by Arnab"),
                    RichText(
                      text: new TextSpan(
                          text: "Look at the project",
                          style: new TextStyle(
                              color: Colors.blue, letterSpacing: 2.0),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              _launchURL();
                            }),
                    )
                  ],
                ))))));
  }

  _launchURL() async {
    const url = 'https://github.com/Arnie09/Flutter_beginning';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
