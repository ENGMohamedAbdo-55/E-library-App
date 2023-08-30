import 'package:flutter/material.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
    required this.books,
  });
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: BestSellerListViewItem(
            title: books[index].title,
            img: books[index].image ?? '',
            rating: books[index].rating ?? 0,
            ratingCount: books[index].rating ?? 0,
            autherName: books[index].authorName ?? '',
          ),
        );
      },
    );
  }
}
