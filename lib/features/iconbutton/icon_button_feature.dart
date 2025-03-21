import 'package:flutter/material.dart';
import 'package:flutterproject/features/animatedcontainer/reusable-components/reusable_icon_button.dart';

class IconButtonFeature extends StatelessWidget {
  const IconButtonFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Reusable Icon Buttons")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                icon: Icons.favorite,
                color: Colors.red,
                size: 30,
                message: 'clicked on favorite',
                context: context,
              ),
              CustomIconButton(
                icon: Icons.share,
                color: Colors.blue,
                size: 30,
                message: 'clicked on share',
                context: context,
              ),
              CustomIconButton(
                icon: Icons.download,
                color: Colors.green,
                size: 30,
                message: 'downloaded',
                context: context,
              ),
              CustomIconButton(
                icon: Icons.linked_camera,
                message: 'Clicked on camera',
                context: context,
              ),
              CustomIconButton(
                icon: Icons.home,
                message: 'clicked on home',
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
