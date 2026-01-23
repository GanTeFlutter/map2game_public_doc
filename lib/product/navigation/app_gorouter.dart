import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map2game/future/login_process/splash/splash_view.dart';
import 'package:map2game/future/views/home/home_view.dart';
import 'package:map2game/future/views/map/map_view.dart';
import 'package:map2game/future/views/notification/notifications_view.dart';
import 'package:map2game/future/views/profile/profile_view.dart';
import 'package:map2game/product/constant/strings/navigation/navigation_strings.dart';

part 'custom_transitions.dart';

final GoRouter router = GoRouter(
  initialLocation: NavigationStrings.splash,
  routes: <RouteBase>[
    //initial route
    GoRoute(
      path: NavigationStrings.splash,
      name: NavigationStrings.splash,
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const SplashView(),
        );
      },
    ),

    //Örnek
    GoRoute(
      path: NavigationStrings.home,
      name: NavigationStrings.home,
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const HomeView(),
        );
      },
    ),
    GoRoute(
      path: NavigationStrings.map,
      name: NavigationStrings.map,
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const MapView(),
        );
      },
    ),
    GoRoute(
      path: NavigationStrings.notifications,
      name: NavigationStrings.notifications,
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const NotificationsView(),
        );
      },
    ),
    GoRoute(
      path: NavigationStrings.profile,
      name: NavigationStrings.profile,
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const ProfileView(),
        );
      },
    ),
  ],
);

/// Test modu için basit router - sadece HomeView gösterir
final GoRouter testRouter = GoRouter(
  initialLocation: NavigationStrings.testHome,
  routes: <RouteBase>[
    GoRoute(
      path: NavigationStrings.testHome,
      name: NavigationStrings.testHome,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
  ],
);
