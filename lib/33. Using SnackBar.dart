import 'package:flutter/material.dart';

class MyApp33 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp33> {
  final GlobalKey<ScaffoldState> _scaffoldstate =
      new GlobalKey<ScaffoldState>();

  int Cnt = 0;
  String _showBar(String msg) {
    _scaffoldstate.currentState
        .showSnackBar(new SnackBar(content: new Text(msg)));
    Cnt++;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*a key is a way of refrencing an actual widget, below we are making refrence
      of an object we created, it will be accessible across the entire application since
      we are creating a GlobalKey*/
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text('Name here'),
        backgroundColor: Colors.red,
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Add widgets here'),
              new RaisedButton(
                onPressed: () => _showBar(Cnt.toString()),
                child: new Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
