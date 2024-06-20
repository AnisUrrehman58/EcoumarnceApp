import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/firebase_options.dart';
import 'app.dart';
import 'data/repositories/Authentication/authentications_repository.dart';

/// Entry point of flutter App--

Future<void> main() async {

  /// Widget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///  -- GetX local storage
  await GetStorage.init();

  /// -- Await Native splash util other item load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// -- Initialize Firebase & Authentications Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationsRepository()),
  );
  // Load all the Material Design / Theme / Localization / Binding
  runApp(const MyApp());


}


