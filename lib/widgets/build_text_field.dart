import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key,
    required this.validateText,
    required this.labelText,
    this.obscureText = false,
    required this.controller,
  });

  final String validateText;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextFormField(
        obscureText: obscureText,
        // obscuringCharacter: '*',
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validateText;
          }
          return null;
        },
        decoration: InputDecoration(
          label: Text(labelText),
          hintText: 'Enter $labelText',
          hintStyle: const TextStyle(color: Colors.black26),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
}
