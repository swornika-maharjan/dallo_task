import 'package:flutter/cupertino.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class OverallContainers extends StatelessWidget {
  const OverallContainers({
    super.key,
    required this.details,
    required this.numbers,
    this.color,
    this.width,
  });
  final String details;
  final String numbers;
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 200,
        height: 52,
        decoration: BoxDecoration(
          color: AppColors.overallbox,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    details,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.description,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: width),
                  Text(numbers, style: TextStyle(color: color, fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
