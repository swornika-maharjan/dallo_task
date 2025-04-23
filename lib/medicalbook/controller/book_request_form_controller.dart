import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:get/get.dart';

class BookRequestFormController extends GetxController {
  //variable
  final formController =
      ['As soon as possible', 'Within a month', 'no rush'].obs;

  final RxInt _selectedIndex = 0.obs;
  final RxBool _selectionError = false.obs;

  final formData = {}.obs;
  final formkey = GlobalKey<FormBuilderState>();

  //getter
  int get selectedIndex => _selectedIndex.value;
  bool get selectionError => _selectionError.value;

  //method
  updateFormData(String key, dynamic value) {
    formData[key] = value;
  }

  void selectIndex(index) {
    _selectedIndex(index);
  }

  void submitForm() {
    if (formkey.currentState?.saveAndValidate() ?? false) {
      formData.addAll(formkey.currentState!.value);
      Get.snackbar(
        "Success",
        "Form submitted successfully!",
        backgroundColor: DTColor.chartGreen,
      );
    } else {
      return;
    }
  }
}
