// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_network_library/data_provider.dart';
import 'package:flutterproject/features/course/screens/course_list_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Form Key
  // final formkey = GlobalKey<FormBuilderState>();
  final RxBool _showPassword = false.obs;

  //getter
  bool get showPassword => _showPassword.value;

  var formData = {}.obs;
  updateFormData(String key, dynamic value) {
    formData[key] = value;
  }

  void togglePasswordVisibility() {
    _showPassword.value = !_showPassword.value;
  }

  void login() {
    RESTExecutor(
      domain: 'auth',
      label: 'login',
      method: 'POST',
      successCallback: (res) {
        print('login successful!');
        Get.to(
          () => CourseListScreen(),
          arguments: {'email': formData['email']},
        );
      },
      errorCallback: (res) {
        print('login failed!');
      },
    ).execute(
      data: {'email': formData['email'], 'password': formData['password']},
    );
  }
}
