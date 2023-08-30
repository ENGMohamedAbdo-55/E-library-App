import 'package:flutter/material.dart';
import 'package:projects/Core/utiles/assets.dart';

class subsign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.01),
              borderRadius: BorderRadius.circular(13)),
          child: Image.asset(AssetsData.GgoogleImage),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.01),
              borderRadius: BorderRadius.circular(13)),
          child: Image.asset(AssetsData.faceImage),
        )
      ],
    );
  }
}
