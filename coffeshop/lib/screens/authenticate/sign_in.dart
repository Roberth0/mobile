// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:coffeshop/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 142, 16, 0),
              child: Column(children: <Widget>[
                Text(
                  'Sing In',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.email),
                    hintText: 'Email or Phone number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: const Color(0xffc4c4c4)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: const Color(0xffc4c4c4)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    dynamic result = await _auth.signInAnon();
                    if (result == null) return;
                    print(result);
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 213, 95, 4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      'Sign In',
                      style:
                          GoogleFonts.lexend(fontSize: 24, color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: <Widget>[
                    Text("Don't have an account?", style: GoogleFonts.lexend()),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign Up',
                      style: GoogleFonts.lexend(
                          color: Color.fromARGB(255, 213, 95, 4)),
                    )
                  ],
                ),
              ]),
            )),
            Expanded(
              child: Container(
                  alignment: Alignment.bottomRight,
                  constraints: BoxConstraints.tightForFinite(height: 300),
                  child: Image.asset('images/elipse4.png')),
            )
          ],
        ),
      ),
    );
  }
}
