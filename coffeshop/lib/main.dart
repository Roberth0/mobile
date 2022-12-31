// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class UserLogin extends StatelessWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: //Column(
            // children: <Widget>[
            Center(
      // child: Image.asset("assets/logo.png"),
      child: Icon(
        Icons.add_shopping_cart,
        color: Colors.indigoAccent[400],
      ),
    )
        // ],
        );
    // );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.account_circle),
          label: Text("Login"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo[400],
          ),
          // child: Text("Login"),
        ),
        // child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
