// ignore_for_file: prefer_const_constructors

import 'package:coffeshop/screens/authenticate/sign_in.dart';
import 'package:coffeshop/screens/authenticate/sign_up.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleState() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn
        ? SignIn(toggleView: toggleState)
        : SignUp(toggleView: toggleState);
  }
}
