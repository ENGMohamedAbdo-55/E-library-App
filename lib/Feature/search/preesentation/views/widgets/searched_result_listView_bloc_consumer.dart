// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:projects/Feature/home/domain/entities/book_entity.dart';
// import 'package:projects/Feature/search/preesentation/manager/cubit/searched_books_cubit.dart';
// import 'package:projects/Feature/search/preesentation/views/widgets/search_result_listview.dart';

// class SearchedResultListViewBlocConsumer extends StatefulWidget {
//   const SearchedResultListViewBlocConsumer({
//     super.key,
//   });

//   @override
//   State<SearchedResultListViewBlocConsumer> createState() =>
//       _SearchedResultListViewBlocConsumerState();
// }

// class _SearchedResultListViewBlocConsumerState
//     extends State<SearchedResultListViewBlocConsumer> {
//   List<BookEntity> searchedBooks=[];

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SearchedBooksCubit, SearchedBooksState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return  SearchResultListView(books: searchedBooks,);
//       },
//     );
//   }
// }
