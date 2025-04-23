import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/controller/edit_profile_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class DTRadio extends StatelessWidget {
  DTRadio({super.key, required this.value, required this.text});
  final EditProfileController controller = Get.put(EditProfileController());
  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Radio(
            activeColor: DTColor.starCommandBlue,
            value: value,
            groupValue: controller.gender.value,
            onChanged: (val) => controller.gender.value = val!,
          ),
          Text(text, style: header6.copyWith(fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
