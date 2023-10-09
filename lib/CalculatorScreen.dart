import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:practice2/components/MyButton.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var result = '';

  void CalculateResult() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      userInput.toString(),
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          title: 'AC',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput = '';
                            result = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+/-',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '%',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '/',
                          btnColor: Colors.orange,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          title: '7',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '8',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '8';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '9',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '9';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '*',
                          btnColor: Colors.orange,
                          onPress: () {
                            userInput += '*';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          title: '4',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '5',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '6',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '-',
                          btnColor: Colors.orange,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          title: '1',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '2',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '2';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '3',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '3';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '+',
                          btnColor: Colors.orange,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          title: '0',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: '.',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          btnColor: Colors.grey,
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                            CalculateResult();
                          },
                        ),
                        MyButton(
                            title: '=',
                            btnColor: Colors.orange,
                            onPress: CalculateResult),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
