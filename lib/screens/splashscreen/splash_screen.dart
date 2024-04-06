import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sooshiz/utils/constants.dart';

import '../onboarding_screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Crusoe300,
      child: Center(
        child: Image.asset("assets/images/splash_screen_logo.png"),
      ),
    );
  }
}
