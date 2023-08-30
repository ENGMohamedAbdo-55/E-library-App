import 'package:flutter/material.dart';

class StlidingTexy extends StatelessWidget {
  const StlidingTexy({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (contex, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Find Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Dancing Script",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          );
        });
  }
}
