import 'package:flutter/material.dart';
import 'package:flutter_focus_and_textfield/Activities/Login.dart';
import 'package:flutter_focus_and_textfield/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.ROUTE ,
      routes: route ,
    );
  }
}