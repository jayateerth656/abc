import 'package:flutter/material.dart';

class booksession extends StatefulWidget
{
  @override
  State<StatefulWidget>createState()
  {
    return Session_State();
    
  }
}
class Session_State extends State<booksession>
{
  get body => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("book your classes"),
        ),
        body: ListView(
          children: <Widget>[
             Image.network('https://picsum.photos/250?image=9'),

            
            
          ],
        ),
      ),
    );
  }
}

mixin widget {
}


