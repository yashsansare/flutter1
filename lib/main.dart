import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/FinalPage.dart';
import 'package:flutter1/HomeScreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => Homescreen(),
      '#':(context) => Final()
    },
  ));
}
