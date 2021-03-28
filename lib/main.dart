import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smiles/Splash_Screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
    ),
    //   DevicePreview(
    //     // enabled: !kReleaseMode,
    //     builder: (context) => MyApp(),
    //   ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder, // Add the builder here
      home: SplashScreen(),
    );
  }
}
