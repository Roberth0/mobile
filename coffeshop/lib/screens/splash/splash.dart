// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:coffeshop/screens/wrapper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Wrapper()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/elipse1.png'),
                Image.asset('images/elipse2.png'),
              ],
            ),
            Image.asset('images/logo.png'),
            Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset('images/elipse3.png'),
            ),
          ]),
        ],
      ),
    ));
  }
}
