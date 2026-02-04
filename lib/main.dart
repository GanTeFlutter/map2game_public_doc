import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map2game/product/init/app_initialize.dart';
import 'package:map2game/product/init/app_state_initialize.dart';
import 'package:map2game/product/navigation/app_gorouter.dart';
import 'package:map2game/product/theme/state/theme_cubit.dart';
import 'package:map2game/product/theme/theme.dart';

// Test modu flag'i - true yapınca test modunda başlar

void main() async {
  const initialManager = ApplicationInit();
  await initialManager.start();

  runApp(
    EasyLocalization(
      supportedLocales: initialManager.localize.supportedItems,
      path: initialManager.localize.initialPath,
      startLocale: initialManager.localize.startLocale,
      useOnlyLangCode: true,
      child: const StateInitialize(child: _MyApp()),
    ),
  );
}

const bool isTestMode = false;

class _MyApp extends StatelessWidget {
  const _MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      showPerformanceOverlay: true,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: context.watch<ThemeCubit>().state,
      routerConfig: isTestMode ? testRouter : router,
    );
  }
}
