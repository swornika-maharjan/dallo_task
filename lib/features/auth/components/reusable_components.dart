import 'package:flutter/material.dart';

class DTTextFormField extends StatelessWidget {
  const DTTextFormField({
    super.key,
    required this.onChanged,
    required this.hintText,
    required this.labelText,
    required this.validator,
    required this.obscureText,
    required this.prefixIcon,
    required this.suffixIcon,
  });
  final Function(String)? onChanged;
  final String hintText;
  final String labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        hoverColor: Colors.blue.shade100,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 12.0),
          child: suffixIcon,
        ),
      ),
      validator: validator,
    );
  }
}
