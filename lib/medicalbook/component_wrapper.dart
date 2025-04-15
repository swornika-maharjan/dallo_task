

import 'package:flutter/material.dart';
import 'package:flutterproject/theme/dt_color.dart';

class ComponentWrapper extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? radius;
  final Widget? child;
  final EdgeInsets? padding;
  final double? width;

  const ComponentWrapper({
    super.key,
    this.child,
    this.width,
    this.backgroundColor = DTColor.white,
    this.borderWidth = 0,
    this.radius = 8,
    this.borderColor = DTColor.white,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding ,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(width: borderWidth!, color: borderColor!),
        borderRadius: BorderRadius.all(Radius.circular(radius!)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: DTColor.black.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
