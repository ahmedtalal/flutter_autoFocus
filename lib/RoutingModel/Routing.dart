import 'package:flutter/material.dart';
import 'package:flutter_focus_and_textfield/Activities/Home.dart';
import 'package:flutter_focus_and_textfield/Activities/Login.dart';

var route = <String , WidgetBuilder>{
  Home.ROUTE : (context) => Home() ,
  Login.ROUTE : (context) => Login() ,

};