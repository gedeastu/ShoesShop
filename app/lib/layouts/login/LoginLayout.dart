import 'package:app/pages/Login/desktop/LoginDesktop.dart';
import 'package:app/pages/Login/mobile/LoginMobile.dart';
import 'package:app/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: LoginMobile(), desktopBody: LoginDesktop()),
    );
  }
}