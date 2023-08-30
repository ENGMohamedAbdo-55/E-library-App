import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/Core/Widgets/custom_LoadingIndicator_Widget.dart';
import 'package:projects/Feature/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:projects/Feature/home/presentation/manager/similar_books_cubit/cubit/similar_books_state.dart';

import 'Similar_ListView_section.dart';


class SimilarBooksListViewBlocBuilder extends StatelessWidget {
  const SimilarBooksListViewBlocBuilder({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SimilarListViewSection(books:state.books);
}else if(state is SimilarBooksFailure)
{
  return ErrorWidget(state.errMessage);
}
else{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
