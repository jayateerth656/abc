import 'package:flutter_training/session1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_training/session.dart';

import 'HealthLogin.dart';


class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Activities!!!!!!!!!!!"),
        ),
        body: Container(
          child: Column(
            children: <Widget> [
              Expanded(child: ListView(
                children: <Widget> [
                  Image.network("https://images.newindianexpress.com/uploads/user/imagelibrary/2020/3/29/w1200X800/cxvxcv.jpg"),
                  Image.network("https://media5.newsnationtv.com/images/2017/01/11/973488273-rahuldravid.jpg"),
                  Image.network("https://images.financialexpress.com/2020/05/yogha.jpg"),
                  Image.network("https://www.elsevier.com/__data/assets/image/0011/95177/Yoga-image.jpg"),
                ],
              ),
              ),

              Container(
                child: RaisedButton(
                  child: Text("Book sessions"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Demo1()),
                      );
                    },
                ),
              ),
              Container(
                child: RaisedButton(
                  child: Text("Back to login"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
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