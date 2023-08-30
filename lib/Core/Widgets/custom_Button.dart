import 'package:flutter/material.dart';

class CustomButtton extends StatelessWidget {
  const CustomButtton(
      {super.key,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor,
      required this.title});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 19, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
