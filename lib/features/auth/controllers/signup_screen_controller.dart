import 'package:flutter/cupertino.dart';
import 'package:flutter_network_library/flutter_network_library.dart';
import 'package:flutterproject/features/auth/screens/otp_screen.dart';
import 'package:get/get.dart';

class SignupScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  //variable
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

  void signup() {
    RESTExecutor(
      domain: 'auth',
      label: 'signup',
      method: 'POST',
      successCallback: (res) {
        print('signup successful!');
        Get.to(() => OtpScreen(), arguments: {'email': formData['email']});
      },
      errorCallback: (res) {
        print('signup failed!');
      },
    ).execute(
      data: {
        'firstName': formData['firstName'],
        'middlename': null,
        'lastName': formData['lastName'],
        'gender': null,
        'email': formData['email'],
        'password': formData['password'],
        'profileImage': null,
        'address': null,
        'phoneNumber': null,
        'registerType': 'EMAIL',
      },
    );
  }
}
