import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/Utils/route_names.dart';
import 'package:practice2/Views/Screen1.dart';
import 'package:practice2/Views/animated_text_screen.dart';
import 'package:practice2/Views/calculator_screen.dart';
import 'package:practice2/Views/home_screen.dart';
import 'package:practice2/Views/pincode_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.screen1:
        return MaterialPageRoute(builder: (context) => Screen1());
      case RouteName.pincodeScreen:
        return MaterialPageRoute(builder: (context) => PinCodeScreen());
      case RouteName.animatedTextScreen:
        return MaterialPageRoute(builder: (context) => AnimatedTextScreen());
      case RouteName.calculatorScreen:
        return MaterialPageRoute(builder: (context) => CalculatorScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
