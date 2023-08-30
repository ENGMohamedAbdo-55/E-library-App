import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:projects/Core/utiles/bloc_observer.dart';
import 'package:projects/Feature/home/data/repos/home_repo_impl.dart';
import 'package:projects/Feature/home/domain/entities/book_entity.dart';
import 'package:projects/Feature/home/domain/use_cases/fetch_featured_books_usecase.dart';
import 'package:projects/Feature/home/domain/use_cases/fetch_newest_books_usecase.dart';
import 'package:projects/Feature/home/presentation/manager/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:projects/Feature/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'Core/utiles/app_rourter.dart';
import 'Core/utiles/servise_locator.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setUpServiceLocator();
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(kNeewstBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Library());
}

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            )..fetchNewestBooks();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
