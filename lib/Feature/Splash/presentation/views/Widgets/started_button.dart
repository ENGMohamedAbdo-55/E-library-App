import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  var title;
  late double hiSize;
  late double widSize;
  MainButton(
      {required this.title, required this.hiSize, required this.widSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: widSize,
      height: hiSize,
      decoration: BoxDecoration(
          color: const Color(0xff246d3a),
          borderRadius: BorderRadius.circular(13)),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'font',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 1),
      ),
    );
  }
}
