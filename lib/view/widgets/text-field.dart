import 'package:flutter/material.dart';

class TextFieldShared extends StatelessWidget {
  TextFieldShared({super.key, required this.controller, required this.hint, required this.label});
  final TextEditingController controller;
  final String hint;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        hintStyle:const TextStyle(color: Colors.black),
        labelStyle:const TextStyle(color: Colors.black)
      ),
    );
  }
}