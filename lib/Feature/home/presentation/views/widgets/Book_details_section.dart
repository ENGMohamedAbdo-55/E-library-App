import 'package:flutter/material.dart';

import '../../../../../Core/utiles/Styles.dart';
import 'Book_Rating_Item.dart';
import 'book_action_btn.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .27),
          child:  const CustomBookImage(
            imageUrl:
        ''
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('The Car Racing Book', style: Styles.textStyle30),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .9,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle22
                .copyWith(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 11,
        ),
         const RatingItem(
          rating: 10,
          ratingCount: 10,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 23,
        ),
         const BooksActionBtn(),
      ],
    );
  }
}
