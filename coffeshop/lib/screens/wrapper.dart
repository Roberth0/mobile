// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:coffeshop/screens/authenticate/authenticate.dart';
import 'package:coffeshop/screens/home/home.dart';
import 'package:coffeshop/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return Profile();
    // return user == null ? Authenticate() : Home();
  }
}
