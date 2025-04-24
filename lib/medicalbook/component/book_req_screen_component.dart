import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/dt_divider.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class BookReqScreenComponent extends StatelessWidget {
  const BookReqScreenComponent({
    super.key,
    required this.date,
    required this.status,
    this.backgroundColor = DTColor.white,
    this.color,
    required this.title,
    required this.author,
    required this.quantity,
    this.radius = 8,
    this.borderColor = DTColor.platinum,
    this.padding,
  });

  final String date;
  final String status;
  final Color? backgroundColor;
  final Color? color;
  final String title;
  final String author;
  final String quantity;
  final double? radius;
  final Color? borderColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ComponentWrapper(
      borderColor: borderColor,
      radius: radius,
      padding: padding ?? EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //date
                Text(date, style: header7.copyWith()),

                // status
                ComponentWrapper(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  backgroundColor: backgroundColor,
                  child: Text(
                    status,
                    style: header7.copyWith(
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
          ),

          DTDivider(),

          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Text(
                  title,
                  style: header5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: DTColor.darkbluishgray,
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //author
                    Expanded(
                      child: Text(
                        author,
                        style: header7.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),

                    //quantity
                    Text(
                      'Qty: ${quantity.toString()}',
                      style: header7.copyWith(color: DTColor.assetGrey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
