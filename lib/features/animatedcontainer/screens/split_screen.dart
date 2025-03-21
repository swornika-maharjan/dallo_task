import 'package:flutter/material.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Top Half (50% of screen)
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Top Half",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            // Bottom Half (50% of screen)
            Expanded(
              child: Container(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "Bottom Half",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
