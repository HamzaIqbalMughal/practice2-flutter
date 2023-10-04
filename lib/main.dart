import 'package:flutter/material.dart';
import 'package:practice2/AnimatedTextScreen.dart';
import 'package:practice2/pincodeScreen.dart';
import 'package:practice2/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Flutter Demo',
      // home: Screen1(),
      // home: AnimatedTextScreen(),
      home: PinCodeScreen(),
    );
  }
}
