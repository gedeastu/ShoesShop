import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  final controller;
  final double width;
  final TextInputType inputType;
  final String hintText;
  const EmailField({
    super.key,
    required this.controller,
    required this.width,
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
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: TextField(
          keyboardType: widget.inputType,
          controller: widget.controller,
          obscureText: false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade200
            )
          ),
      ),
    );
  }
}