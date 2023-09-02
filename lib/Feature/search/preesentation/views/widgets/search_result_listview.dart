// import 'package:flutter/material.dart';
// import 'package:projects/Feature/home/domain/entities/book_entity.dart';
// import 'package:projects/Feature/home/presentation/views/widgets/best_seller_item.dart';

// class SearchResultListView extends StatelessWidget {
//   const SearchResultListView({
//     super.key,
//     required this.books,
//   });
//   final List<BookEntity> books;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       //  shrinkWrap: true,
//       padding: EdgeInsets.zero,
//       itemCount: books.length,
//       itemBuilder: (context, index) {
//         return  Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5),
//             child: BestSellerListViewItem(
//               title: books[index].title,
//             img: books[index].image??'',
//             rating: books[index].rating??0,
//             ratingCount: books[index].rating??0 ,
//             autherName: books[index].authorName??'',));
//       },
//     );
//   }
// }
