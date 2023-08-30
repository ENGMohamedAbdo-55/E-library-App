import 'package:flutter/material.dart';

class RebWaySign extends StatelessWidget {
  final  String fTxt;
  final String  secTxt;

  const RebWaySign({super.key, required this.fTxt, required this.secTxt});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fTxt,
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        ),
        Text(
          secTxt,
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        )
      ],
    );
  }
}
