// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:projects/Feature/home/presentation/views/widgets/SimilarBooksListViewBlocBuilder.dart';

import 'Book_details_section.dart';
import 'custom_Book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppbar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SimilarBooksListViewBlocBuilder(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )
      ],
    );
  }
}
