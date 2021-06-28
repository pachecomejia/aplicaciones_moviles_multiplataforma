import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Incremento"),
        onPressed: () {
          Navigator.pushNamed(context, 'calculadora');
          }),
    );
  }
}