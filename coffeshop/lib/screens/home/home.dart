// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:coffeshop/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Still working on it!",
              style: GoogleFonts.permanentMarker(fontSize: 36)),
          ElevatedButton(
              onPressed: () async {
                await AuthService().signOut();
              },
              child: Text("Log Out"))
        ],
      ),
    ));
  }
}
