import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sooshiz/screens/log_in/log_in_screen.dart';
import 'package:sooshiz/screens/splashscreen/splash_screen.dart';

import 'screens/onboarding_screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins'
      ),
      home: LoginScreen(),
    );
  }
}
