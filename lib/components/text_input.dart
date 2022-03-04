import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String placeholder;
  final IconData? icon;

  const TextInput({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.placeholder,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: placeholder,
          icon: icon != null ? Icon(icon) : null,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
