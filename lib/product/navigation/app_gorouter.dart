import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map2game/future/views/home/home_view.dart';

part 'custom_transitions.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) {
        return slideRightTransition(
          key: state.pageKey,
          child: const HomeView(),
        );
      },
    ),
  ],
);
