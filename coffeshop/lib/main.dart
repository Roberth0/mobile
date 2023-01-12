// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:coffeshop/screens/splash/splash.dart';
import 'package:coffeshop/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
      ),
    );
  }
}
