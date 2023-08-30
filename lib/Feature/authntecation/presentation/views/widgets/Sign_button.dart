import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String title;

 const  SignButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 60),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xff04512e),
          borderRadius: BorderRadius.circular(13)),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'font',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 1),
      ),
    );
  }
}
