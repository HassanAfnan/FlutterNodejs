import 'package:flutter/material.dart';
import 'package:flutter_nodejs/pages/add_users.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
            },
          )
        ],
      ),
    );
  }
}
