import 'package:app/pages/Home/desktop/HomeDesktop.dart';
import 'package:app/pages/Home/mobile/HomeMobile.dart';
import 'package:app/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: HomeMobile(), desktopBody: HomeDesktop());
  }
}