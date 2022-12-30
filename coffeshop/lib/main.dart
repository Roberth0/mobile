// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserLogin(),
  ));
}

class UserLogin extends StatelessWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900], //#16335B,
        title: Text("Coffe App"),
      ),
      body: Center(
        child: Text(
          "Scan QR Code",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontFamily: 'Raleway',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("clikceck"),
        backgroundColor: Colors.indigoAccent,
        child: Text("+"),
      ),
    );
  }
}
