import 'package:app/pages/Register/desktop/RegisterDesktop.dart';
import 'package:app/pages/Register/mobile/RegisterMobile.dart';
import 'package:app/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: RegisterMobile(), desktopBody: RegisterDesktop()),
    );
  }
}