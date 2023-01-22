// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:coffeshop/screens/profile/profile.dart';
// import 'package:coffeshop/services/auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../cart/cart.dart';
import 'home.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int _page = 0;
  final List<Widget> _screens = [
    Home(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
          index: _page,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          height: 50,
          color: Colors.orange,
          animationCurve: Curves.easeInOut,
          backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 300),
          items: const [
            Icon(Icons.home, size: 25, color: Colors.white),
            Icon(
              Icons.shopping_cart_checkout,
              size: 25,
              color: Colors.white,
            ),
            Icon(Icons.person, size: 25, color: Colors.white),
          ]),
    );
  }
}
