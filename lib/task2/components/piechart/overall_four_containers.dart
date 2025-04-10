import 'package:flutter/cupertino.dart';
import 'package:flutterproject/theme/task_theme.dart';

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
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.dentbox,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
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
    );
  }
}
