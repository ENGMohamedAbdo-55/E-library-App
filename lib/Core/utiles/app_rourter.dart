import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:projects/Core/utiles/servise_locator.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';
import 'package:projects/Feature/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:projects/Feature/home/presentation/views/screens/home_view.dart';
import 'package:projects/Feature/search/preesentation/manager/cubit/searched_books_cubit.dart';
import 'package:projects/Feature/search/preesentation/views/screens/search_view.dart';

import '../../Feature/home/data/repos/home_repo_impl.dart';
import '../../Feature/home/presentation/views/screens/Book_Details_View.dart';

abstract class AppRouter {
  static const kBookDetailsView = '/homeView';
  static const kSearchview = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => const HomeView()),
    ),
    // GoRoute(
    //   path: 'mm',
    //   builder: ((context, state) => const SplashView()),
    // ),

    GoRoute(
      path: kSearchview,
      builder: ((context, state) => BlocProvider(
            create: (context) => SearchedBooksCubit(),
            child: const SearchView(),
          )),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: ((context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit( getIt.get<HomeRepoImpl>()),
            child:   BookDetailsView(bookModel: state.extra as BookModel,),
          )),
    ),
  ]);
}
