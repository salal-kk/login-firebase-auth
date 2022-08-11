

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("welcome to home screen"),
          ElevatedButton(onPressed: (){}, child: Text("logout"))
        ],
      ),
    );
  }
}
