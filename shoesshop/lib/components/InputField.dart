import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final controller;
  final Icon icon;
  //final double width;
  final double rounded;
  //final double height;
  final TextInputType inputType;
  final String hintText;
  const InputField({
    super.key,
    required this.icon,
    required this.rounded,
    //required this.height,
    required this.controller,
    //required this.width,
    required this.inputType,
    required this.hintText
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
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
            prefixIcon: widget.icon,
            //fillColor: Color.fromARGB(255, 43, 41, 55),
            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(widget.rounded))
          ),
      ),
    );
  }
}