import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const ROUTE = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page" ,
        ),
        backgroundColor: Colors.orange ,
      ),
      body: null,
    );
  }
}