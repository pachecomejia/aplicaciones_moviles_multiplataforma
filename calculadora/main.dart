import 'package:calculadora/menu.dart';
import 'package:flutter/material.dart';
import 'Calculadora.dart';



void main() { 
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //theme: ThemeData(
        //primarySwatch: Colors.blue,
     // ),
     initialRoute: 'menu',
     routes: <String,WidgetBuilder>{
       'menu': (BuildContext context) => MenuPage(),
       'calculadora': (BuildContext context) => Calculadora()
     },
      title: 'calculadora',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new Calculadora(),
    );
  }
}