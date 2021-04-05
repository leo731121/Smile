import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smiles/Onboarding_Screens/Welcome_Screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(),
                child: Lottie.asset('assets/lottie/cleantooth.json'),
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 80.0,
                ),
                child: AnimatedTextKit(
                  repeatForever: false,
                  animatedTexts: [
                    WavyAnimatedText(
                      'Smile',
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
