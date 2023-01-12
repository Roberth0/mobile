// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  final Function()? toggleView;
  const SignUp({super.key, this.toggleView});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  String name = "";
  String lastname = "";
  String email = "";
  String password = "";

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
                    child: Container(child: Image.asset('images/elipse5.png'))
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 140, 15, 0),
                  child: Form(
                    key: _formKey,
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
                          SizedBox(height: 50),

                          Container(
                            decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                            child: TextFormField(
                              validator: (value) => value!.isEmpty
                                  ? "Enter a correct value"
                                  : null,
                              onChanged: (val) => setState(() { name = val; }),
                              decoration: InputDecoration(
                                hintText: "Name",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)
                                    ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),

                          TextFormField(
                            validator: (value) =>
                                value!.isEmpty ? "Enter a correct value" : null,
                            onChanged: (value) => setState(() {
                              lastname = value;
                            }),
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
                            validator: (val) {
                              bool isValid = false;
                              if (val != null) {
                                isValid = EmailValidator.validate(val);
                              }
                              return isValid ? null : "Enter a valid email";
                            },
                            onChanged: (value) => setState(() {
                              email = value;
                            }),
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
                            validator: (val) {
                              return val!.length > 6
                                  ? null
                                  : "Enter a password 6+ long";
                            },
                            onChanged: (value) => setState(() {
                              password = value;
                            }),
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
                          SizedBox(height: 40),

                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(255, 213, 95, 4))),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  dynamic result = 'Valid form';
                                  if (result == "null") {
                                    print("invalid data");
                                  }
                                }
                                print("Registrar");
                              },
                              child: Text("Sign Up",
                                  style: GoogleFonts.lexend(
                                      fontSize: 20, color: Colors.white))
                          ),
                          SizedBox( height: 18 ),

                          Row(
                            children: <Widget>[
                              Text("Already have an account?",
                                  style: GoogleFonts.lexend()
                              ),

                              TextButton(
                                  onPressed: widget.toggleView,
                                  child: Text("Sign In",
                                      style: GoogleFonts.lexend(
                                        color: Color.fromARGB(255, 213, 95, 4),
                                      ))
                              )
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
