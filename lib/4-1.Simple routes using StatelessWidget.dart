import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Home Page"), backgroundColor: Colors.deepOrange),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70.0,
                  onPressed: () {
                    //Navigator.of(context).pushNamed("/SecondPage");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  }),
              new Text("Home")
            ]))));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Second Page"), backgroundColor: Colors.deepOrange),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.home, color: Colors.blue),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              new Text("Second Page")
            ]))));
  }
}
