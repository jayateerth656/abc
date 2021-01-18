import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login1.dart';
class demo2 extends StatefulWidget {
  @override
  _demo2State createState() => _demo2State();
}

class _demo2State extends State<demo2> {
  final myControllerFName = TextEditingController();
  final myControllerLName = TextEditingController();
  final myControllermail = TextEditingController();
  final myControllerpwd = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold

     (
        appBar: AppBar(
          title: Text(" welcome to Registration"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Image.network(('https://i.pinimg.com/564x/f2/50/5b/f2505ba78ecf300716346dff4a5dbefe.jpg'),
              height:100,
              width:100,
              ),
              TextField(
                controller: myControllerFName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: "First Name",suffixIcon: Icon(Icons.account_circle)),
              ),

              TextField(
                controller: myControllerLName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: "Last Name",suffixIcon: Icon(Icons.account_circle_rounded)),
              ),

              TextField(
                controller: myControllermail,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: "Email Id",suffixIcon: Icon(Icons.email_outlined)),
              ),
              TextField(
                controller: myControllerpwd,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter password",suffixIcon: Icon(Icons.remove_red_eye_sharp,  color: Colors.black,)),

              ),

              Column(
                children:<Widget> [

                  RaisedButton(
                    child: Text(" create an account"),
                    onPressed: () {

                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => reg()),
                       );
                    },
                  ),
                ],
              )

            ],
          ),

        ),
    );
  }
}
