import 'package:flutter/material.dart';
import 'dart:io';

import './page1.dart';
import './page2.dart';
import './info.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(child:Column(children: <Widget>[
          AppBar(title: Text("Add ons "),),
          ListTile(title: Text("Info"),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Info()));
          },)
        ],)),
        appBar: AppBar(
          title: Text('Multiple Pages'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.accessibility),
                text: "Navigation",
              ),
              Tab(
                icon: Icon(Icons.exit_to_app),
                text: "Exit",
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
            child: TabBarView(
              children: <Widget>[
                Card(
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
                ))),
                Card(
                  child: Center(child: Column(children: <Widget>[
                    Text("Hope you enjoyed navigating!"),
                    RaisedButton(
                      child: Text("Exit"),
                      onPressed: ()=> exit(0),
                    )
                  ],),),
                )

              ],
            ))));
  }
}
