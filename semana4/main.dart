import "package:flutter/material.dart";
import "package:proyecto_final/pages/login_page.dart";
import "package:proyecto_final/pages/read_page.dart";
import "package:proyecto_final/pages/write_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login_page": (BuildContext context) => LoginPage(),
        "read_page": (BuildContext context) => ReadPage(),
        "write_page": (BuildContext context) => WritePage()
      },
      initialRoute: "login_page",
    );
  }
