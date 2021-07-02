/*
Author : El Hadj Youssouf
Company : YESWECANGE
Licence : MIT
Reference : KOFFI HERMANN
*/
import 'package:article/screen/authentification/login.dart';
import 'package:article/screen/authentification/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomePageState createState() => _HomePageState();
}

// ignore: unused_element
class _HomePageState extends State<HomePage> {
  bool visible = false;
  toggle() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return visible ? Login(toggle) : Register(toggle);
  }
}
