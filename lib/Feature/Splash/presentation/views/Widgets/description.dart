import 'package:flutter/material.dart';

class description_text extends StatelessWidget {
  const description_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome to our app\nGet your books in as fast as one second",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: "Dancing Script",
          color: Color(0xB3FCFCFC),
          fontSize: 25,
          fontWeight: FontWeight.w500),
    );
  }
}
