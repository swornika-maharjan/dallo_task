import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/medicalbook/screens/accounts_page.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  var gender = ''.obs;
  var formData = {}.obs;
  var imageFile = Rxn<File>();

  final ImagePicker _picker = ImagePicker();
  final formkey = GlobalKey<FormBuilderState>();

  updateFormData(String key, dynamic value) {
    formData[key] = value;
  }

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }

  void removeImage() {
    imageFile.value = null;
  }

  void submitProfile() {
    if (formkey.currentState?.saveAndValidate() ?? false) {
      // Custom validation for gender
      if (gender.value.isEmpty) {
        Get.snackbar(
          'Validation Error',
          'Please select your gender.',
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
        return;
      }
      formData.addAll(formkey.currentState!.value);
      Get.snackbar(
        "Success",
        "Profile updated successfully!",
        backgroundColor: DTColor.chartGreen,
      );
      Get.to(() => AccountsPage());
    } else {
      return;
    }
  }
}
