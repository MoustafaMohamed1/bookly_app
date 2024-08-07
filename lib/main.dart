import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilis/app_router.dart';
import 'package:bookly_app/core/utilis/service_locator.dart';
import 'package:bookly_app/featuers/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/featuers/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'featuers/home/presentation/manger/newest books/nnewest_books_cubit.dart';

void main() {
  setubServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          debugShowCheckedModeBanner: false,
        ),
    );
  }
}
