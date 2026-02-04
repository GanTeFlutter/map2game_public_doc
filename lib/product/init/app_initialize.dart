// TODO(crashlytics): Sonra aç
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:map2game/product/service/locator.dart';

@immutable
final class ApplicationInit {
  const ApplicationInit();

  // final CoreLocalize localize = CoreLocalize();

  Future<void> start() async {
    // WidgetsFlutterBinding.ensureInitialized();

    // await EasyLocalization.ensureInitialized();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    // // TODO(crashlytics): Sonra aç - Firebase Crashlytics entegrasyonu
    // // if (kDebugMode || kProfileMode) {
    // //   await FirebaseCrashlytics.instance
    // //       .setCrashlyticsCollectionEnabled(false);
    // // }
    // //
    // // FlutterError.onError =
    // //     FirebaseCrashlytics.instance.recordFlutterFatalError;
    // //
    // // PlatformDispatcher.instance.onError = (error, stack) {
    // //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    // //   return true;
    // // };

    // await _initializeGoogleMaps();

    // final directory = await getApplicationDocumentsDirectory();
    // HydratedBloc.storage = await HydratedStorage.build(
    //   storageDirectory: HydratedStorageDirectory(directory.path),
    // );
    await setupLocator();
  }

  /// Android için Google Maps renderer'ı optimize et
  /// iOS'ta bu kod çalışmaz (platform kontrolü var)
  Future<void> _initializeGoogleMaps() async {
    // final mapsImplementation = GoogleMapsFlutterPlatform.instance;
    // if (mapsImplementation is GoogleMapsFlutterAndroid) {
    //   try {
    //     await mapsImplementation.initializeWithRenderer(
    //       AndroidMapRenderer.latest,
    //     );
    //   } on PlatformException catch (e) {
    //     debugPrint('--🗺️ Renderer zaten initialize: $e');
    //   }
    //   await mapsImplementation.warmup();
    // }
  }
}
