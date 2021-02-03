import 'package:flutter/material.dart';
import 'package:register_form/blocs/providers.dart';
import 'package:register_form/screens/login.dart';



class App extends StatelessWidget {
  build(context) {
    // Make available Bloc inside Provider, which is the child
    return Provider(
      child: MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}