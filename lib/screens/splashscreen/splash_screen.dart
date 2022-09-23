import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Container()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF428144),
      child: Center(
        child: Image.asset("assets/images/onboarding_logo.png"),
      ),
    );
  }
}
