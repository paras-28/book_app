import 'package:book_app/config/routes/routes.dart';
import 'package:book_app/presentation/features/home/home_detail/ui/home_detail_screen.dart';
import 'package:book_app/presentation/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  static final routers = GoRouter(
    observers: [
      GoRouterObserver(),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      return null;
    },
    debugLogDiagnostics: true,
    navigatorKey: parentNavigatorKey,
    initialLocation: '/home-screen',
    routes: [
      GoRoute(
          path: '/home-screen',
          name: AppRoutesName.homeScreen,
          builder: (context, state) => HomeScreen(),
          routes: [
            GoRoute(
              path: '/detail',
              name: AppRoutesName.homeDetail,
              builder: (context, state) {
                Map<String, dynamic> extra =
                    state.extra as Map<String, dynamic>;
                return HomeDetailScreen(
                    bookResModel:
                        extra[AppRouteStringConstant.bookResponseModel]);
              },
              // redirect: RedirectUtil.redirect,
            ),
          ]
          // redirect: RedirectUtil.redirect,
          ),
    ],
  );
}

class RouterTransitionFactory {
  static CustomTransitionPage getTransitionPage(
      {required BuildContext context,
      required GoRouterState state,
      required Widget child,
      required Transition type}) {
    return CustomTransitionPage(
        key: state.pageKey,
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          switch (type) {
            case Transition.fade:
              return FadeTransition(opacity: animation, child: child);
            case Transition.rotation:
              return RotationTransition(turns: animation, child: child);
            case Transition.size:
              return SizeTransition(sizeFactor: animation, child: child);
            case Transition.scale:
              return ScaleTransition(scale: animation, child: child);
            default:
              return FadeTransition(opacity: animation, child: child);
          }
        });
  }
}

enum Transition { fade, rotation, size, scale }
