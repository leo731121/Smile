import 'dart:async';
import 'package:flutter/material.dart';
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
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff66CBDD),
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/Smile Dental Logo.png')),
        ],
      ),
    );
  }
}
