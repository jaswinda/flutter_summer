import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalti/khalti.dart';
import 'package:the_flutter_demo/views/pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Khalti.init(
    publicKey: '',
    enabledDebugging: false,
  );

  runApp(const GetMaterialApp(home: SplashScreen()));
}
