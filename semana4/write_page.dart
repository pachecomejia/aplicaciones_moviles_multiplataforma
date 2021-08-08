import "package:flutter/material.dart";
import "dart:convert";
import "package:http/http.dart" as http;

class WritePage extends StatefulWidget {
  WritePage({Key? key}) : super(key: key);

  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  late String nombre;
  late String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WRITE PAGE"),
        backgroundColor: Colors.redAccent,
      ),
      body: InsertarWidget(),
    );
  }

  Widget InsertarWidget() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
      children: [
        Text("Nombre", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        TextField(
          controller: nombreController,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          )
        ),
      Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
        child: Text("E-mail:", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          )
        ),
      ),
      Padding(padding: EdgeInsets.fromLTRB(75, 60, 75, 50),
      child: ElevatedButton(onPressed: () => Insertar(), child: Text("Insertar",style: TextStyle(fontSize: 20))),
      )
      ],
    );
  }

  Future Insertar() async{
    nombre = nombreController.text;
    email = emailController.text;
    try {
      var url = Uri.parse("https://flutterauth-93087-default-rtdb.asia-southeast1.firebasedatabase.app/agenda.json");
      Map data = {
        "nombre": nombre,
        "email": email,
      };
      var response = await http.post(url, body: json.encode(data) );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
          Navigator.pushNamed(context, "read_page");
      }
    }
    catch (e){
      print(e.toString());
    }
  }
}
