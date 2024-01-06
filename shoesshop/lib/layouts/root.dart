import 'package:app/components/bottom_navigation.dart';
import 'package:app/layouts/home/HomeLayout.dart';
import 'package:flutter/material.dart';
class Root extends StatelessWidget {
  
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        body: Home(),
        bottomNavigationBar: BottomNavigation()
      ),
    );
  }
}