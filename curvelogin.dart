import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


// void main() => runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     )
// );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                  children: <Widget>[
                    ClipPath(
                      clipper: WaveClipperOne(flip: true),
                      child: Container(
                        height: 200,
                        color: Colors.orangeAccent,
                        child: Center(
                          child: Text("Login", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40,
                          ),),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Email or Phone number",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[500])
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[500])
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors: [Colors.blue[100], Colors.blue[200]]
                                  )
                              ),
                              child: Center(
                                child: Text("login", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                              ),

                            ),
                            Container(
                              child: Text("forgot password?",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black )),
                            ),






                            SizedBox(height: 20,),
                            Container(
                                child: Column(
                                  children: <Widget>[
                                    Text('Does not have account?'),
                                    RaisedButton.icon(
                                      onPressed: () {

                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0))),
                                      label: Text(
                                        'Sign In',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      icon: Icon(
                                        Icons.navigation_sharp,
                                        color: Colors.white,
                                      ),
                                      textColor: Colors.white,
                                      splashColor: Colors.red,
                                      color: Colors.green,
                                    ),
                                    // Container(
                                    //   height: 50,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(10),
                                    //     gradient: LinearGradient(
                                    //         begin: Alignment.centerRight,
                                    //         end: Alignment.centerLeft,
                                    //         colors: [Colors.blue[100], Colors.blue[200]]
                                    //     )
                                    // ),
                                    // child: Center(
                                    //   child: Text("Sign in", style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontWeight: FontWeight.bold)
                                    //   ),
                                    // ),
                                    //
                                    // ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('or'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    FloatingActionButton(
                                      child: Text(
                                        'f',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      backgroundColor: Colors.blue,
                                      onPressed: () {},
                                    ),

                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ))
                          ],
                        )
                    )

                 ,   ClipPath(
                      clipper: WaveClipperOne(flip: true,reverse: true),
                      child: Container(
                        height: 100,
                        color: Colors.orangeAccent,

                      ),
                    ),


                  ]
              )
          ),
        )
    );
  }
}


