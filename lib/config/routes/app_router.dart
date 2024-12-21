
import 'package:book_app/presentation/features/home/ui/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_router_observer.dart';
import 'app_routes_name.dart';

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
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
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

enum Transition
{
  fade ,
  rotation,
  size,
  scale
}