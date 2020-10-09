import 'package:flutter/material.dart';
import 'package:free_write/1.%20helloworld.dart';
import 'package:free_write/2.%20Stateless%20Widgets.dart';
import 'package:free_write/3.Buttons%20and%20StatefulWidgets.dart';
import 'package:free_write/4-1.Simple%20routes%20using%20StatelessWidget.dart';
import 'package:free_write/4-2.Routes%20using%20StatefulWidget.dart';
import 'package:free_write/8.%20Tab%20Navigation/Tab%20Navigation.dart';

//import '6. Using onSubmitted to show input text after submit.dart';
//import '5. Using onChanged to show input text.dart';
import '7. Adding-Deleting text in TextField.dart';

void main() {
  runApp(new MaterialApp(home: new MyTabs()));
}

// void main() {
//   runApp(new MaterialApp(home: new FirstPage(), routes: <String, WidgetBuilder>{
//     "/SecondPage": (BuildContext context) => new SecondPage()
//   }));
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: '너무 어렵다'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
