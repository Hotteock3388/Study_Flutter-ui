import 'package:flutter/material.dart';

class HelloWorld1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new Center(child: new Text('Hello world!')));
  }
}

class HelloWorld2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Hello World App'),
        ),
        body: new Center(
          child: new Text('Hello, world!'),
        ),
      ),
    );
  }
}
