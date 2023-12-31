import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final controller;
  //final double width;
  final double rounded;
  //final double height;
  final TextInputType inputType;
  final String hintText;
  const PasswordField({
    super.key,
    required this.rounded,
    //required this.height,
    required this.controller,
    //required this.width,
    required this.inputType,
    required this.hintText
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 43, 41, 55),
        borderRadius: BorderRadius.circular(widget.rounded)
      ),
      child: TextField(
          keyboardType: widget.inputType,
          controller: widget.controller,
          obscureText: _obscureText,
          style: TextStyle(color: Colors.grey.shade200),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.normal,
              fontSize: 15.0
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(widget.rounded)
            // ),
            //filled: true,
            prefixIcon: Icon(Icons.lock,color: Colors.blue,),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            }, icon: _obscureText ? Icon(Icons.visibility,color: Colors.grey.shade600,) : Icon(Icons.visibility_off,color: Colors.grey.shade600,),),
            //fillColor: Color.fromARGB(255, 43, 41, 55),
            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(widget.rounded))
          ),
      ),
    );
  }
}