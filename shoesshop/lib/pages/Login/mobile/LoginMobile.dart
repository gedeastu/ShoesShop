import 'package:app/components/InputField.dart';
import 'package:app/components/PasswordField.dart';
import 'package:app/layouts/root.dart';
import 'package:app/pages/Register/mobile/RegisterMobile.dart';
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
      resizeToAvoidBottomInset: true ,
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0,top: 25.0),
            child: 
            Column(
              children: [
                Column(
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
                        InputField(controller: widget.emailController, inputType: TextInputType.emailAddress, hintText: "Your Email Address",rounded: 10.0,icon: Icon(Icons.email,color: Colors.blue,),)
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
                      height: 50,
                      child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>((Set <MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue.shade700; // Color when the button is pressed
                            }
                            return Colors.blue.shade600; // Default color
                        } ),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        )
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return Root();
                        },));
                      },
                      child: Text("Sign In",style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ),
                  ],
                ),
                SizedBox(height: 250,),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(color: Colors.grey.shade600),),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return RegisterMobile();
                          },));
                        }, 
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                          foregroundColor: MaterialStateProperty.resolveWith<Color>((Set <MaterialState> states){
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.blue.shade600; 
                              } else {
                                return Colors.blue.shade500; 
                              }
                          })
                        ),
                        child: Text("Sign up"),
                        )
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