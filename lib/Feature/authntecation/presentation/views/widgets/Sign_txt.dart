import 'package:flutter/material.dart';
import 'package:projects/constants.dart';

class SignText extends StatelessWidget {
  final String txt;
  final double size;

  SignText({super.key, required this.txt, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Text(
        txt,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: kDancingScript,
            color: const Color(0xB3FCFCFC),
            fontSize: size,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
