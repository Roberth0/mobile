// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  final Function()? toggleView;
  const SignUp({super.key, this.toggleView});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Stack(children: [
                Positioned(
                    top: 30,
                    right: 0,
                    child: Container(child: Image.asset('images/elipse5.png'))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 140, 15, 0),
                  child: Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Sing Up',
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Name",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Lastname",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: _passwordVisible,
                            decoration: InputDecoration(
                              hintText: "Password",
                              suffixIcon: IconButton(
                                icon: _passwordVisible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              // style: ButtonStyle(backgroundColor: Color.fromARGB(255, 213, 95, 4)),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(255, 213, 95, 4))),
                              onPressed: () {
                                print("Registrar");
                              },
                              child: Text("Sign Up",
                                  style: GoogleFonts.lexend(
                                      fontSize: 20, color: Colors.white))),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Already have an account?",
                                  style: GoogleFonts.lexend()),
                              TextButton(
                                  onPressed: widget.toggleView,
                                  child: Text("Sign In",
                                      style: GoogleFonts.lexend(
                                        color: Color.fromARGB(255, 213, 95, 4),
                                      )))
                            ],
                          ),
                        ]),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
