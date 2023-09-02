import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utiles/Styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.ratingCount});
  final MainAxisAlignment mainAxisAlignment;
  final  rating;
 final  ratingCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.yellow,
            size: 17,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            rating.toString(),
            style: Styles.textStyle15.copyWith(color: Colors.white),
          ),
           Text('($ratingCount) ', style: Styles.textStyle15)
        ],
      ),
    );
  }
}
