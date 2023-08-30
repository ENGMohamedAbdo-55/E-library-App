import 'package:flutter/material.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

import 'package:projects/Feature/home/presentation/views/widgets/similar_books_listview_Item.dart';

class SimilarListViewSection extends StatelessWidget {
  const SimilarListViewSection({
    Key? key,
  required this.books,
  }) : super(key: key);

final List <BookEntity>books;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('You Can Also Like',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SimilarListViewItem(books: books,),
      ],
    );
  }
}
