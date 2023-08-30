import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/Core/Widgets/custom_LoadingIndicator_Widget.dart';
import 'package:projects/Core/Widgets/custom_error_widget.dart';

import '../../manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'Best_seller_ListView.dart';

class BestSellerListViewBlocConsumer extends StatelessWidget {
  const BestSellerListViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return BestSellerListView(
            books: state.books,
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
