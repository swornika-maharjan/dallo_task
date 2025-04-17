import 'package:flutter/material.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class ButtonsComponent extends StatelessWidget {
  const ButtonsComponent({
    super.key,
    required this.text,
    required this.imagepath,
    this.width,
  });
  final String text;
  final String imagepath;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
          color: DTColor.white,
          border: Border.all(color: DTColor.borderLite),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Text(
              text,
              style: header7.copyWith(
                fontWeight: FontWeight.w600,
                color: DTColor.academyBlue,
              ),
            ),
            SizedBox(width: 5),
            Image.asset(imagepath, height: 90, width: 16),
          ],
        ),
      ),
    );
  }
}
