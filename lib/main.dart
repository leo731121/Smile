import 'package:flutter/material.dart';
import 'package:smiles/Splash_Screen/splash_screen.dart';
import 'package:smiles/size_config.dart';

void main() {
  runApp(Home());
  // MaterialApp(
  //   home: SplashScreen(),
  // ),
  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(),
  // ),
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              // locale: DevicePreview.locale(context), // Add the locale here
              // builder: DevicePreview.appBuilder, // Add the builder here
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
