import 'package:flutter/material.dart';

import 'items.dart';
import 'login1.dart';
class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
 // Widget build(BuildContext context) {
    final myControllerName = TextEditingController();
    final myControllerDate = TextEditingController();
    final myControllertime = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text(" Fill details"),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: myControllerName,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: "enter your name"),
                ),
                TextField(
                  controller: myControllerDate,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Enter the date of joining"),
                ),
                TextField(
                  controller: myControllertime,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "enter your mobile number"),
                        ),

              Container(
              child: RaisedButton(
              child: Text(" Cross check!"),
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  reg  ()),
              );
            },
      ),

      ),
            ],
                    ),
                  ),
                );

    }
  }


