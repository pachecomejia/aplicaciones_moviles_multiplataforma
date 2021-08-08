import "package:flutter/material.dart";
import "dart:convert";
import "package:http/http.dart" as http;

class ReadPage extends StatefulWidget {
  ReadPage({Key? key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {

  bool _reading = true;
  final List items = [];

    Future <void> _ReadData() async {
    try {
      var url = Uri.parse("https://flutterauth-93087-default-rtdb.asia-southeast1.firebasedatabase.app/agenda.json");
      var response = await http.get(url);
      var data = json.decode(response.body);
      items.clear();
      data.forEach((key,value) {
        items.add("Usuario:");
        items.add(value["nombre"]);
        items.add(value["email"]+"\n");
      });
      print(items);
      setState(() {
        _reading = false;
      });
    }
    catch(e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ReadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("READ PAGE"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            child: Text(items[index], style: TextStyle(fontSize: 24),),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          Navigator.pushNamed(context, "write_page"); 
        },
        child: Text("write"),
      ),
    );
  }
}
