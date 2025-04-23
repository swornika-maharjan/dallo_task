import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/amore_option_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class AccountsMoreOption extends StatelessWidget {
  AccountsMoreOption({super.key});
  final AmoreOptionController controller = Get.put(AmoreOptionController());

  @override
  Widget build(BuildContext context) {
    return ComponentWrapper(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'More options',
              style: header7.copyWith(color: DTColor.assetGrey),
            ),
          ),

          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.options.length,
              itemBuilder: (context, index) {
                return ComponentWrapper(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  borderColor: DTColor.platinum,
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(() => OrderIssuesScreen());
                    },
                    child: ListTile(
                      leading: SvgPicture.asset(controller.icons[index]),
                      title: Text(
                        '${controller.options[index]}',
                        style: header6.copyWith(color: DTColor.darkbluishgray),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: DTColor.textFieldHintColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
