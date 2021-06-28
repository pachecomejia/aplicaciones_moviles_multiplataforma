import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
   
  double num1  = 0; 
  double num2 = 0;
  double 
  sum = 0;

  final TextEditingController tabla1 = new TextEditingController(text: '0');
  final TextEditingController tabla2 = new TextEditingController(text: '0');

  void sumar() {
    setState(() {
      num1 = double.parse(tabla1.text);
      num2 = double.parse(tabla2.text);

      sum = num1 + num2;
    });
  }

  void restar() {
    setState(() {
      num1 = double.parse(tabla1.text);
      num2 = double.parse(tabla2.text);

      sum = num1 - num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = double.parse(tabla1.text);
      num2 = double.parse(tabla2.text);

      sum = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = double.parse(tabla1.text);
      num2 = double.parse(tabla2.text);

      sum = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Calculadora')),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'RESULTADO: $sum',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'PRIMER NUMERO'),
              controller: tabla1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'SEGUNDO NUMERO'),
              controller: tabla2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Expanded(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('+'),
                    color: Colors.greenAccent,
                    onPressed: () => sumar(),
                  ),
                  new MaterialButton(
                    child: new Text('-'),
                    color: Colors.redAccent,
                    onPressed: () => restar(),
                  ),
                  new MaterialButton(
                    child: new Text('*'),
                    color: Colors.blueAccent,
                    onPressed: () => multiplicar(),
                  ),
                  new MaterialButton(
                    child: new Text('/'),
                    color: Colors.orangeAccent,
                    onPressed: () => dividir(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}