import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String email;
  late String password;
  late String resultado = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
        backgroundColor: Colors.redAccent,
      ),
      body: LoginWidget(),
    );
  }

  Widget LoginWidget() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
      children: [
        Text("E-mail:", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          )
        ),
      Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
        child: Text("Contraseña:", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: TextField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          )
        ),
      ),
      Padding(padding: EdgeInsets.fromLTRB(75, 60, 75, 50),
      child: ElevatedButton(onPressed: () => IniciarSesion(), child: Text("Iniciar sesión",style: TextStyle(fontSize: 20))),
      ),
      Center(child: Text("$resultado", style: TextStyle(fontSize: 26),),)
      ],
    );
  }

    Future IniciarSesion() async {
    setState(() {
      email = emailController.text;
      password = passwordController.text;
    });
    try {
      var url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBlg9DXLgISgrztmq1rzCLjeyxmBWeh-9s");
      Map <String, dynamic> data = {
        "email": email,
        "password": password
      };
      var response = await http.post(url, body: data);
      print(response.statusCode);
      print(response.body);
      setState(() {
        if (response.statusCode == 200) {
          Navigator.pushNamed(context, "read_page");
          resultado=" ";
        }
        else {
          resultado="Datos incorrectos, verifique.";
        }
      });
    }
    catch(e){
      print(e.toString());
    }
  }
}
