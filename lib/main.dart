import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:login_firebase_1st/view/loginscreen.dart';

import 'dart:async';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
      theme: ThemeData(
          primaryColorDark: Colors.blueGrey.shade900,
          primaryColorLight: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen()));
}
