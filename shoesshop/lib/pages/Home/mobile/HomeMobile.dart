import 'package:app/components/home-screen-components/appbar_home.dart';
import 'package:app/components/home-screen-components/content_home.dart';
import 'package:flutter/material.dart';
class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: CustomScrollView(
        slivers: [
        const AppBarHome(),
        ContentHome()
        ],
      ),
    );
  }
}