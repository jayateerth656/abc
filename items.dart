import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'BMI.dart';
import 'session.dart';
import 'package:flutter_training/booksession.dart';

import 'simple.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile page"),

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountEmail: Text("abc@gmail.com"),
        accountName: Text("JJJ"),
        currentAccountPicture: Image.network("https://images-na.ssl-images-amazon.com/images/I/513MX-WVPGL._SL1000_.jpg"),
        decoration: BoxDecoration(
          color: Colors.blue, )
            ),
            ListTile(leading: (Icon(Icons.home)),
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Demo()),
                );
              },
            ),
            ListTile(leading: (Icon(Icons.message)),
            title: Text("message"),
            ),
            ListTile(leading: (Icon(Icons.mail)),
    title: Text("email"),
            ),
            ListTile(leading: (Icon(Icons.contact_mail)),
              title: Text(" contact")),
            ListTile(leading: (Icon(Icons.add_alert)),
            title:Text("Alertt!")),
            ListTile(leading: (Icon(Icons.logout)),
                title:Text("log out!")),
            ListTile(leading: (Icon(Icons.calculate_rounded)),
                title:Text("BMI CALCULATOR!"),




                onTap: () {
      // Update the state of the app
      // ...
      // Then close the drawer
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BMI_Calc()),
    );
  },),




          ],
        ),
    ),
    );


  }
}
