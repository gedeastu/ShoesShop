import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  final controller;
  //final double width;
  final double rounded;
  //final double height;
  final TextInputType inputType;
  final String hintText;
  const EmailField({
    super.key,
    required this.rounded,
    //required this.height,
    required this.controller,
    //required this.width,
    required this.inputType,
    required this.hintText
  });

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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
          obscureText: false,
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
            prefixIcon: Icon(Icons.email,color: Colors.blue,),
            //fillColor: Color.fromARGB(255, 43, 41, 55),
            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(widget.rounded))
          ),
      ),
    );
  }
}