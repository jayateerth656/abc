import 'package:flutter/material.dart';
import 'package:flutter_training/create.dart';
import 'package:flutter_training/session1.dart';
import 'HealthLogin.dart';
import 'simple.dart';
import 'create.dart';

class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          title: Text("yoga classes"),


        ),
        body: Container(
          child: Column(
            children: [
              Expanded(child: ListView(
                children: [
                  Image.network("https://images.newindianexpress.com/uploads/user/imagelibrary/2020/3/29/w1200X800/cxvxcv.jpg"),
                  Container(
                  child: RaisedButton(
                    child: Text("fill session details"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Create()),

                      );
                    }
                  ),
                  ),
                  Image.network("https://images.financialexpress.com/2020/05/yogha.jpg"),
                  Container(
                    child: RaisedButton(
                      child: Text("fill session details"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Create()),
                        );
                      },
                    ),
                  ),
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTHi_X_gATryoltWtx6-N0gAhALckbsfh-g&usqp=CAU"),
                  Container(
                    child: RaisedButton(
                      child: Text("fill session details"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Create()),
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
              // Container(
              //   child: RaisedButton(
              //     child: Text("Book"),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => SecondRoute()),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),



    );
  }
}