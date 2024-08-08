import 'package:bookly_app/core/utilis/service_locator.dart';
import 'package:bookly_app/featuers/home/data/models/BookModel.dart';
import 'package:bookly_app/featuers/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/featuers/home/presentation/manger/simillar_books_cubit/simillar_books__cubit.dart';
import 'package:bookly_app/featuers/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/featuers/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/search/presenation/views/search_view.dart';
import '../../featuers/splash/presentation/view_models/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/SearchVew';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailesView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimillarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
