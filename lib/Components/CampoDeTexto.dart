import 'package:flutter/material.dart';

class CampoDeTexto extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;
  final VoidCallback? onChanged;
  const CampoDeTexto(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.prefixIcon,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.greenAccent)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
          ),
          onChanged:(value) {
          },
          ),
    );
  }
}
