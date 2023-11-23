import 'package:flutter/material.dart';
import 'package:practice2/Views/animated_text_screen.dart';
import 'package:practice2/Views/home_screen.dart';
import 'package:practice2/Views/pincode_screen.dart';
import 'package:practice2/Utils/routes.dart';
import 'package:practice2/Utils/route_names.dart';

import 'Utils/route_names.dart';
import 'Views/calculator_screen.dart';

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
      // home: PinCodeScreen(),
      // home: HomeScreen(),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
