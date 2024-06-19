import 'package:booklyapp/features/home%20features/presentation/views/book_detailed_view.dart';
import 'package:booklyapp/features/home%20features/presentation/views/home_view.dart';
import 'package:booklyapp/features/splash%20features/presentation/view/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const goHome = '/homeView';
  static const goBookDetailed = '/bookDetailedView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SpalshView(),
    ),
    GoRoute(
      path: goHome,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: goBookDetailed,
      builder: (context, state) => const BookDetailedView(),
    ),
  ],
);
}