import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class ReferComponent extends StatelessWidget {
  const ReferComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: ComponentWrapper(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Refer and earn reward points',
                  style: header5.copyWith(
                    fontWeight: FontWeight.w700,
                    color: DTColor.bookTitleBlack,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Refer your friends to shop with us. Each successful referral earns you exciting reward points! ⭐ 🏆',
                  style: header7.copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ComponentWrapper(
                      width: 280,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
                      ),
                      borderColor: DTColor.platinum,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'LeslieAlexandar1234',
                            style: header7.copyWith(color: DTColor.black),
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.content_copy_outlined,
                                color: DTColor.orange,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_drop_down,
                                color: DTColor.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    ComponentWrapper(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      borderColor: DTColor.platinum,
                      borderWidth: 1.5,
                      child: Icon(
                        Icons.share_outlined,
                        size: 20,
                        color: DTColor.darkbluishgray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
