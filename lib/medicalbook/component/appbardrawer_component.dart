import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class AppbarComponents extends StatelessWidget implements PreferredSizeWidget {
  const AppbarComponents({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(77);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.dentbox,
      toolbarHeight: 70,
      leadingWidth: 410,
      leading: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                
              },
              child: Image.asset(
                'assets/images/drawer.png',
                height: 24,
                width: 24,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              height: 30,
              width: 160,
              decoration: BoxDecoration(
                color: AppColors.membercolor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    Image.asset(
                      'assets/images/diamond.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Become a member',
                      style: TextStyle(color: AppColors.dental, fontSize: 11),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: AppColors.dental,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 70),
            Image.asset(
              'assets/images/notification.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 15),
            Image.asset('assets/images/heart.png', height: 24, width: 24),
            const SizedBox(width: 15),
            Image.asset('assets/images/search.png', height: 24, width: 24),
          ],
        ),
      ),
    );
  }
}
