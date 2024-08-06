
import 'package:bookly_app/featuers/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/featuers/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/search/presenation/views/search_view.dart';
import '../../featuers/splash/presentation/view_models/views/splash_view.dart';
abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/SearchVew';


  static final router = GoRouter(
  routes: [
  GoRoute(path:'/' ,
  builder: (context , state) => const SplashView(),
  ),
    GoRoute(path:kHomeView ,
      builder: (context , state) => const HomeView(),
    ),
    GoRoute(path:kBookDetailesView ,
      builder: (context , state) => const BookDetailsView(),
    ),
    GoRoute(path:kSearchView ,
      builder: (context , state) => const SearchView(),
    ),
  ]
  );
}