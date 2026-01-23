import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map2game/product/init/app_initialize.dart';
import 'package:map2game/product/init/app_state_initialize.dart';
import 'package:map2game/product/navigation/app_gorouter.dart';
import 'package:map2game/product/state/cubit/theme/theme_cubit.dart';
import 'package:map2game/product/theme/theme.dart';

// Test modu flag'i - true yapınca test modunda başlar rout degişir
const bool isTestMode = false;

Future<void> main() async {
  await AppInitialize().make();
  runApp(const StateInitialize(child: _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      title: 'akillisletme',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: context.watch<ThemeCubit>().state,
      routerConfig: isTestMode ? testRouter : router,
    );
  }
}
