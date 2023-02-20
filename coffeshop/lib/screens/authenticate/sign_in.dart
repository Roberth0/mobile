// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_build_context_synchronously

import 'package:coffeshop/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignIn extends StatefulWidget {
  final Function()? toggleView;
  const SignIn({super.key, this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String error = "";
  bool _passwordVisible = false;

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
                Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          // validator: (val) => (val?.isEmpty ?? true)
                          validator: (val) {
                            bool isValid = false;
                            if (val != null) {
                              isValid = EmailValidator.validate(val);
                            }
                            return isValid ? null : "Enter a valid email";
                          },
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          decoration: InputDecoration(
                            // prefixIcon: Icon(Icons.email),
                            hintText: 'Email or Phone number',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: const Color(0xffc4c4c4)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          validator: (val) => val!.length < 4
                              ? "Enter a password 4+ long"
                              : null,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          obscureText: _passwordVisible,
                          decoration: InputDecoration(
                            // prefixIcon: Icon(Icons.email),
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
                            hintText: 'Password',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: const Color(0xffc4c4c4)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        if (error.isNotEmpty) ...[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Text(error,
                                  style: TextStyle(color: Colors.red)),
                            ),
                          )
                        ],
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 213, 95, 4))),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                        child: CircularProgressIndicator());
                                  });

                              if (_formKey.currentState!.validate()) {
                                dynamic result =
                                    await _auth.signIn(email, password);
                                if (result == null) {
                                  setState(() {
                                    error = "Email and/or Password not valid";
                                    print(error);
                                  });
                                }
                              }

                              Navigator.of(context).pop();
                            },
                            child: Text("Sign In",
                                style: GoogleFonts.lexend(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)))
                      ],
                    )),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: <Widget>[
                    Text("Don't have an account?", style: GoogleFonts.lexend()),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: widget.toggleView,
                      child: Text("Sign Up",
                          style: GoogleFonts.lexend(
                            color: Color.fromARGB(255, 203, 90, 4),
                          )),
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
