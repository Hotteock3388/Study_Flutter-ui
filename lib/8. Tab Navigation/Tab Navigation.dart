import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    //컨트롤러로 Tab 갯수 조절
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Pages"),
          backgroundColor: Colors.deepOrange,
          //AppBar의 Botomm에 달린 상단 네비게이션 바
          bottom: new TabBar(controller: controller, tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back))
          ]),
        ),
        //그냥 바텀 네비게이션 바
        bottomNavigationBar: new Material(
            color: Colors.deepOrange,
            child: new TabBar(controller: controller, tabs: <Tab>[
              new Tab(icon: new Icon(Icons.arrow_forward)),
              new Tab(icon: new Icon(Icons.arrow_downward)),
              new Tab(icon: new Icon(Icons.arrow_back))
            ])),
        // Scaffold의 바디인 TabBarView에 TabView들 등록!
        body: new TabBarView(controller: controller, children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third()
        ]));
  }
}
