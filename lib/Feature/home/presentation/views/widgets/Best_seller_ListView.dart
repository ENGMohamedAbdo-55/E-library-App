import 'package:flutter/material.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
    required this.books,
  });
  final List<BookModel> books;
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
            
     bookModel: books[index],
          ),
        );
      },
    );
  }
}
