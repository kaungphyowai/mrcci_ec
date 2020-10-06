import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(home: AuthPage()));
}