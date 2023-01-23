// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:coffeshop/screens/authenticate/authenticate.dart';
import 'package:coffeshop/screens/home/user_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

// temp
import 'package:coffeshop/screens/home/product.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    // return UserHome();
    // return Product();
    return user == null ? Authenticate() : UserHome();
  }
}
