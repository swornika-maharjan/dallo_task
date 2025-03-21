import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final String message;
  final BuildContext context; // Pass context to show dialog

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.message,
    required this.context,
    this.color = Colors.black,
    this.size = 24.0,
  });

  void _showMessageBox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Message"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: color, size: size),
      onPressed: _showMessageBox,
    );
  }
}
