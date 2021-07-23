import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10;
  void _incremento() {
    setState(() {
      _contador = _contador + 2;
    });
  }
  void _decremento() {
    setState(() {
          _contador = _contador - 3;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Incremento y decremento"),
        ),
        body: Center(
          child: Text("$_contador"),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(child: Icon(Icons.add), onPressed: ()=>_incremento()),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: ()=>_decremento(),
          )
        ]));
  }
}
