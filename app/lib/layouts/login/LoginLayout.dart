import 'package:app/pages/Login/desktop/LoginDesktop.dart';
import 'package:app/pages/Login/mobile/LoginMobile.dart';
import 'package:app/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: LoginMobile(), desktopBody: LoginDesktop()),
    );
  }
}