import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.iconField,
    required this.hintText,
    this.obscureTex = false,
    this.initialValue,
    required this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final Icon iconField;
  bool obscureTex;
  String? initialValue;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        validator: validator,
        initialValue: initialValue,
        controller: controller,
        keyboardType: TextInputType.name,
        obscureText: obscureTex,
        decoration: InputDecoration(

          prefixIcon: iconField,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.black12,
                width: 1.5,
                style: BorderStyle.solid,
              )
          ),
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:  BorderSide(
                color: Colors.grey.shade700,
                width: 1.5,
                style: BorderStyle.solid,
              )
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(16),
        ),
      );
  }
}