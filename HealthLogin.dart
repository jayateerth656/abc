import 'package:flutter/material.dart';
import 'package:flutter_training/session.dart';
import 'items.dart';
import 'simple.dart';
import 'create.dart';
import 'session1.dart';
import '';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController myControllerName = TextEditingController();
  TextEditingController myControllerPassword = TextEditingController();
  TextEditingController myControllertime = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold
        (

        backgroundColor: Colors.grey[400],


        body: Container(



          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.30,
                    0.6,
                    0.7,
                    0.20,
                  ],
                  colors: [
                    Colors.deepPurple[50],
                    Colors.deepPurpleAccent,
                    Colors.deepPurpleAccent,
                    Colors.deepPurpleAccent,
                  ])),


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Expanded(child: ListView(
                children: [
                  Image.network('https://i.pinimg.com/564x/f2/50/5b/f2505ba78ecf300716346dff4a5dbefe.jpg',
                    height: 80,
                    width: 100,
                  ),

Text('Login',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  TextField(
                    controller: myControllerName,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: "enter your name"),
                  ),

                  TextField(
                    controller: myControllerPassword,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Enter password",suffixIcon: Icon(Icons.remove_red_eye_sharp,  color: Colors.black,)),

                  ),

                  TextField(
                    controller: myControllertime,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "enter your mobile number",suffixIcon: Icon(Icons.call,  color: Colors.black,)),

                  ),


                  Container(
                      child:ListTile(
                        subtitle: Text('forgot password??????',textAlign: TextAlign.right,),
                       // trailing: Icon(Icons.add_circle_rounded),
                      )
                  ),
                  Column(
                    children:<Widget> [

                      RaisedButton(
                        child: Text("login"),


          onPressed: () {

    if(myControllerName.text == 'jk@gmail.com' && myControllerPassword.text == '12345')
{

    return showDialog(
    context: context,
    builder: (ctx) =>
    AlertDialog(
    title: Text("logging to account"),
    content: Text("login successful!",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
    actions: <Widget>[
    FlatButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>  Profile()),
    );
    },
    child: Text("okay"),
    ),
    ],
    ),
    );

    }else {
      return showDialog(
        context: context,
        builder: (ctx) =>
            AlertDialog(
              title: Text("Warning"),
              content: Text("login failed",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("close"),
                ),
              ],
            ),
      );

    }
          },

                      ),

                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.tealAccent[400])),
                        child: Text(" create an account"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  demo2()),
                          );
                        },
                      ),
                      Container(
                          child:ListTile(
                            subtitle: Text('TERMS AND CONDITIONS',),

                          )
                      ),

                    ],
                  )
                ],
              ),),



            ],
          ),


        ),
      ),
    );
  }
}
