import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class ButtonsComponent extends StatelessWidget {
  const ButtonsComponent({
    super.key,
    required this.text,
    required this.imagepath, this.width,
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
          color: AppColors.dentbox,
          border: Border.all(color: AppColors.overallbox),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(color: AppColors.medicalbook, fontSize: 12),
            ),
            SizedBox(width: 5),
            Image.asset(imagepath, height: 90, width: 16),
          ],
        ),
      ),
    );
  }
}
