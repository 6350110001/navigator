import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/src/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Hard',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Homepage());
  }
}
