import 'package:app/components/EmailField.dart';
import 'package:flutter/material.dart';

class LoginMobile extends StatefulWidget {
  LoginMobile({super.key});
  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 5.0,),
                  Text("Sign In to Continue",style: TextStyle(color: Colors.grey.shade600),)
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text("Email Address"),
                      EmailField(controller: widget.emailController, width: 350, inputType: TextInputType.emailAddress, hintText: "Your Email Address")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}