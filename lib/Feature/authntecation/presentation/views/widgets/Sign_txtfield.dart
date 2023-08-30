import 'package:flutter/material.dart';

class SignTextField extends StatelessWidget {
  final String? hintText;

  const SignTextField({
    super.key,
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xB3FCFCFC)),
            border: InputBorder.none),
      ),
    );
  }
}
