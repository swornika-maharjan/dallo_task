import 'package:flutter/cupertino.dart';
import 'package:flutterproject/task/theme/task_theme.dart';

class RecipesComponent extends StatelessWidget {
  const RecipesComponent({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.dentbox,
          ),
        ),
      ),
    );
  }
}
