import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class DTTextField extends StatelessWidget {
  const DTTextField({
    super.key,
    required this.text,
    required this.hintText,
    this.validator,
    required this.obscureText,
    this.onChanged,
    required this.name,
  });
  final String text;
  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final void Function(String?)? onChanged;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: header7.copyWith(
                fontWeight: FontWeight.w500,
                color: DTColor.bookTitleBlack,
              ),
            ),
            SizedBox(width: 5),
            
            Text(
              '*',
              style: header7.copyWith(
                fontWeight: FontWeight.w500,
                color: DTColor.red,
              ),
            ),
          ],
        ),

        SizedBox(height: 4),
        FormBuilderTextField(
          obscureText: obscureText,
          cursorErrorColor: DTColor.starCommandBlue,
          cursorColor: DTColor.starCommandBlue,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColor.platinum),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColor.platinum),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColor.platinum),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColor.platinum),
            ),
            hintText: hintText,
            hintStyle: header7.copyWith(
              fontWeight: FontWeight.w400,
              color: DTColor.textFieldHintColor,
            ),
          ),
          validator: validator,
          name: name,
        ),
      ],
    );
  }
}
