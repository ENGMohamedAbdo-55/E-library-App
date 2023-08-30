import 'package:flutter/material.dart';

import '../../../../../Core/Widgets/custom_Button.dart';

class BooksActionBtn extends StatelessWidget {
  const BooksActionBtn({super. key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children:  [
          Expanded(
            child: CustomButtton(
              title: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButtton(
              title: "Free Preview",
              backgroundColor: Color(0xff04512e),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
