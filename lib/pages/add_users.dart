import 'package:flutter/material.dart';
import 'package:flutter_nodejs/modules/http.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController();
  String response = "";

  createUser() async {
     var result = await http_post("create-user",{
       "name": nameController.text,
     });
     if(result.ok){
       setState(() {
         response = result.data['status'];
       });
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name"
              ),
            ),
            RaisedButton(
              child: Text("Create"),
              onPressed: createUser,
            ),
            Text(response),
          ],
        ),
      ),
    );
  }
}
