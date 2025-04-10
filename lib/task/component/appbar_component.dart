import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const AppbarComponent({super.key})
    : preferredSize = const Size.fromHeight(77);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dentbox,
        toolbarHeight: 77,
        elevation: 0,
        leadingWidth: 360,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset('assets/images/shiksha.png', height: 41, width: 177),
              const SizedBox(width: 8),
            ],
          ),
        ),
        actions: [
          SizedBox(
            height: 24,
            width: 24,
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Image.asset('assets/images/drawer.png'),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
