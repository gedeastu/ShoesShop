import 'package:app/components/EmailField.dart';
import 'package:app/components/PasswordField.dart';
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
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0,top: 25.0),
            child: 
            Column(

              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 5.0,),
                      Text("Sign In to Continue",style: TextStyle(color: Colors.grey.shade600),),
                      SizedBox(height: 50.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email Address",style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.normal,fontSize: 17),),
                          SizedBox(height: 10.0,),
                          EmailField(controller: widget.emailController, inputType: TextInputType.emailAddress, hintText: "Your Email Address",rounded: 10.0,)
                        ],
                      ),
                      SizedBox(height: 25.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Password",style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.normal,fontSize: 17),),
                          SizedBox(height: 10.0,),
                          PasswordField(controller: widget.passwordController, inputType: TextInputType.visiblePassword, hintText: "Your Password",rounded: 10.0,)
                        ],
                      ),
                      SizedBox(height: 25.0,),
                      Container(
                        width: double.infinity,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        alignment: Alignment.center,
                        child: TextButton(
                        onPressed: (){
                        
                        }, child: Text("Sign In",style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 250,),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(color: Colors.grey.shade600),),
                        TextButton(onPressed: (){}, child: Text("Sign up"))
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}