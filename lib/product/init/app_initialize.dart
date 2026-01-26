import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:map2game/product/service/firebase/firebase_options.dart';
import 'package:map2game/product/service/locator.dart';
import 'package:path_provider/path_provider.dart';

final class AppInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initialize();
  }

  Future<void> _initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    if (kDebugMode || kProfileMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }

    // Widget & framework hataları
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    // Platform / isolate hataları
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: true,
      );
      return true;
    };

    // HydratedBloc storage
    final directory = await getApplicationDocumentsDirectory();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(directory.path),
    );

    await setupLocator();
  }
}
