

import 'package:flutter/material.dart';
class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('select doctor'),
        actions: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.account_circle_rounded),
          ),
          Icon(Icons.more_vert),
          Icon(Icons.search),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Column(
          children:  [
            Container(
              child: Text('find your desired\ndoctor',style: TextStyle(fontSize: 23,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
padding: EdgeInsets.all(70),



            ),
            Container(
child: ListTile(leading: (Icon(Icons.search)),
    title: Text(" SEARCH")),


              height:50,
              width: 250,
              decoration: BoxDecoration(color: Colors.grey[400],
                borderRadius:BorderRadius.circular(50),
              ),

            ),

            Container(
              child: Text('categories',style: TextStyle(fontSize: 23,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),


            ),



Expanded(child:ListView (
  children: <Widget>[



            Container(
              child: (
                   Center(
                    child: Container(
                      width: 300,
                      height: 200,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.red,
                        elevation: 10,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                        const ListTile(
                        leading: Icon(Icons.medical_services, size: 60),
                        title: Text(
                            'Heart specalist',
                            style: TextStyle(fontSize: 30.0)
                        ),
                        subtitle: Text(
                            'book SESSION.',
                            style: TextStyle(fontSize: 18.0)
                        ),

                      ),

                      ]


                        )
                      )
                    ),

                   )
              ),











            //   height: 50,
            //     child: ListView(
            //
            //       scrollDirection: Axis.horizontal,
            //       children: <Widget>[
            //
            //       Container(
            //       width: 200,
            //       color: Colors.purple[600],
            //       child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //     ),
            //
            //     Container(
            //       width: 200,
            //       color: Colors.purple[500],
            //       child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //     ),
            //     Container(
            //       width: 200,
            //       color: Colors.purple[400],
            //       child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
            //     ),
            //   ],
            //
            // ),
    ),



    Container(
      child: (
          Center(
            child: Container(
                width: 300,
                height: 200,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.blue,
                    elevation: 10,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.medical_services, size: 60),
                            title: Text(
                                'dental care',
                                style: TextStyle(fontSize: 30.0)
                            ),
                            subtitle: Text(
                                'book SESSION.',
                                style: TextStyle(fontSize: 18.0)
                            ),

                          ),

                        ]


                    )
                )
            ),

          )
      ),











      //   ],
      //
      // ),
    ),

    Container(
      child: (
          Center(
            child: Container(
                width: 300,
                height: 200,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.lightBlueAccent,
                    elevation: 10,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.medical_services, size: 60),
                            title: Text(
                                'diabitic care',
                                style: TextStyle(fontSize: 30.0)
                            ),
                            subtitle: Text(
                                'book SESSION.',
                                style: TextStyle(fontSize: 18.0)
                            ),

                          ),

                        ]


                    )
                )
            ),

          )
      ),











      //   ],
      //
      // ),
    ),
    Container(child: (
    Text("top doctors",textAlign: TextAlign.center,)
    ),),








  ],


        ),

      ),
      ]
    )
    ),
    );


  }
}
