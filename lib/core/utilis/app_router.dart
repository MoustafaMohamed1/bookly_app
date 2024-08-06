
import 'package:bookly_app/featuers/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/splash/presentation/view_models/views/splash_view.dart';
abstract class AppRouter{
  static const kHomeView = '/homeView';
  static final router = GoRouter(
  routes: [
  GoRoute(path:'/' ,
  builder: (context , state) => SplashView(),
  ),
    GoRoute(path:'/ homeNiew' ,
      builder: (context , state) => HomeView(),
    ),
  ]
  );
}