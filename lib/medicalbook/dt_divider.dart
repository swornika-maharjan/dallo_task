import 'package:flutter/cupertino.dart';
import 'package:flutterproject/theme/dt_color.dart';

class DTDivider extends StatelessWidget {
  const DTDivider({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: color ?? DTColor.platinum,
    );
  }
}
