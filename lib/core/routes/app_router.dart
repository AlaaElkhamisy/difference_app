import 'package:go_router/go_router.dart';
import 'package:playing_app/features/game/presentation/views/loading_game_View.dart';
import 'package:playing_app/features/game/presentation/views/mosabkat_view.dart';
import 'package:playing_app/features/game/presentation/views/starting_game_view.dart';
import 'package:playing_app/features/home/presentation/views/home_view.dart';
import 'package:playing_app/features/home/presentation/views/widgets/home_nav_bar.dart';
import 'package:playing_app/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static final home = '/home';
  static final mosabkatPage = '/mosabkat_page';
  static final loadingGamePage = '/loadingGame_page';
  static final startingGamePage = '/startingGame_page';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: '/home_nav_bar',
      builder: (context, state) => HomeNavBarWidget(),
    ),
    GoRoute(
      path: '/mosabkat_page',
      builder: (context, state) => MosabkatView(),
    ),
    GoRoute(
      path: '/loadingGame_page',
      builder: (context, state) => LoadingGameView(),
    ),
    GoRoute(
      path: '/startingGame_page',
      builder: (context, state) => StartingGameView(),
    )
  ]);
}
