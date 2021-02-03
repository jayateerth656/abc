import 'package:flutter/material.dart';
import 'package:register_form/blocs/providers.dart';
import '../blocs/bloc.dart';
// import '../blocs/provider.dart';

class LoginPage extends StatelessWidget {
  // 'context' gives access to heirarchy and traverse nearest provider
  Widget build(context) {
    // Provider has static function of, passes context, traverses heirarchy and finds nearest provider
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          // See helper functions

          // Pass bloc
          // Helper function needs to be updated to take an arg "Bloc bloc"
          Container(
            height: 60,
          ),
          emailField(bloc),
          passwordField(bloc),
          nameField(bloc),
          telephoneField(bloc),
          Container(margin: EdgeInsets.only(top: 25.0)),
          submitButton(bloc)
        ],
      ),
    );
  }

  // Helper Functions emailField and passwordField
  Widget emailField(Bloc bloc) {
    // StreamBuilder is the core of how widgets get updated.
    return StreamBuilder(
      // Watch the stream...
      stream: bloc.email,
      // Snapshot arg contains information from the stream. If there's an error, assign to error text.
      builder: (context, snapshot) {
        return TextField(
          // onChanged listens to TextField changes and adds to bloc.changeEmail with '_email.sink.add'
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            // Take from snapshot, the error message
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
  Widget nameField(Bloc bloc) {
    // StreamBuilder is the core of how widgets get updated.
    return StreamBuilder(
      // Watch the stream...
      stream: bloc.name,
      // Snapshot arg contains information from the stream. If there's an error, assign to error text.
      builder: (context, snapshot) {
        return TextField(
          // onChanged listens to TextField changes and adds to bloc.changeEmail with '_email.sink.add'
          onChanged: bloc.changeName,
          decoration: InputDecoration(
            hintText: 'RAHUL DRAVID',
            labelText: 'Please Enter your name',
            // Take from snapshot, the error message
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
  Widget telephoneField(Bloc bloc) {
    // StreamBuilder is the core of how widgets get updated.
    return StreamBuilder(
      // Watch the stream...
      stream: bloc.telephone,
      // Snapshot arg contains information from the stream. If there's an error, assign to error text.
      builder: (context, snapshot) {
        return TextField(
          // onChanged listens to TextField changes and adds to bloc.changeEmail with '_email.sink.add'
          onChanged: bloc.changeTelephone,
          decoration: InputDecoration(
            hintText: '+91-6360852145',
            labelText: 'Mobile number',
            // Take from snapshot, the error message
            errorText: snapshot.error,
          ),
        );
      },
    );
  }
  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Registration'),
          color: Colors.blue,
          // If either email or password is false, then null (disabled button). Otherwise true.
          // Button starts disabled. Ternary expression for 'if' checks that there's data.
          onPressed: snapshot.hasData
              ? bloc.submit
              : null,
        );
      },
    );
  }
}