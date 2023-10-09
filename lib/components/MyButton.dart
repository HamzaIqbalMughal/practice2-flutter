import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({super.key});
  final String title;
  final Color btnColor;
  final VoidCallback onPress;
  MyButton({
    Key? key,
    required this.title,
    required this.btnColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: btnColor,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
