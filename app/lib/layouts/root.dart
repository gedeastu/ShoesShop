import 'package:app/pages/splash_screen/SplashScreen.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}