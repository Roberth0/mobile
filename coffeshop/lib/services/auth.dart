// ignore_for_file: avoid_print, avoid_catches_without_on_clauses

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Auth Change
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  // Sign In
  Future signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user as User;
    } catch (_) {
      return null;
    }
  }

  // Sign Up
  Future signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result.user as User;
    } catch (_) {
      return null;
    }
  }

  // Sign Out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (_) {}
  }

  // Sing In Anonymous
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user as User;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
