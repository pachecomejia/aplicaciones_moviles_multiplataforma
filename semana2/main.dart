import 'package:flutter/material.dart';
import 'package:incremento_decremento/pages/home_page.dart';

void main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);
@override
Widget build(BuildContext context){
  return MaterialApp(
    initialRoute: 'home',
    routes: <String, WidgetBuilder>{
      'home': (BuildContext context) => HomePage()
    },
  );
}
}
