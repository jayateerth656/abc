import 'package:flutter/material.dart';
import 'package:flutter_training/simple.dart';
import 'items.dart';
class reg extends StatefulWidget {
  @override
  _regState createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title:Text("Cross Check!!"),

        ),
        body: Container(
          child:ListView(
            children: ListTile.divideTiles(context: context, tiles: [

              ListTile(leading: Icon(Icons.ac_unit),
 title: Text('name'),

    ),
              ListTile(leading: Icon(Icons.fingerprint_rounded),
                title: Text('password'),
              ),

              ListTile(leading: Icon(Icons.phone_android_outlined),
                title: Text('phone num'),
              ),
              RaisedButton(
                child: Text("Done!!!!!!.....go to profile page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Profile()),
                  );
                },
              ),

            ])
              .toList(),
          ),
        ),

    );
  }
}
