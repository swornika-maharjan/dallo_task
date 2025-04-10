import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

Widget buildCard(String title, String imagePath) {
  return Container(
    width: 152,
    height: 143,
    decoration: BoxDecoration(
      color: AppColors.dentbox,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    bottom: 5,
                    child: Image.asset('assets/images/Lightbulb.png'),
                  ),
                ],
              ),

              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors.dental,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Image.asset(imagePath, height: 140, fit: BoxFit.cover),
          ),
        ),
      ],
    ),
  );
}
