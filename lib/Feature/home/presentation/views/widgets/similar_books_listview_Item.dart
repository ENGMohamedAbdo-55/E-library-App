import 'package:flutter/cupertino.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

import 'custom_book_image.dart';

class SimilarListViewItem extends StatelessWidget {
  const SimilarListViewItem({super.key, required this.books});
final List <BookEntity>books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .18,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: books.length,
          itemBuilder: ((context, index) {
            return  Padding(
              padding: const EdgeInsets.only(right: 10, left: 3),
              child: CustomBookImage(
                imageUrl: books[index].image??'not found',
              ),
            );
          }),
        ),
      ),
    );
  }
}
