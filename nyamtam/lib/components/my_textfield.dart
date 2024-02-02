import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final double? width; // Optional width parameter
  final double? height; // Optional height parameter

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.width, // Initialize width
    this.height, // Initialize height
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: width, // Use width
        height: height, // Use height
        child: TextField(
          controller: controller,
          obscureText: obscureText,
         // textAlign: TextAlign.left,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.tertiary),
                    borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
              hintText: hintText,
              
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary,
              fontSize: 15.0,)), 
              
        ),
      ),
      
    );
  }
}
