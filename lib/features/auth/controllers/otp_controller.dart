import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_network_library/data_provider.dart';
import 'package:flutterproject/features/auth/screens/login_screen.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>();

  var formData = {}.obs;

  updateFormData(String key, dynamic value) {
    formData[key] = value;
  }

  void verifyotp(String email) {
    RESTExecutor(
      domain: 'auth',
      label: 'otps',
      method: 'PATCH',
      successCallback: (res) {
        print('OTP verified!');
        Get.to(() => LoginScreen());
      },
      errorCallback: (res) {
        print('otp verification failed!');
      },
    ).execute(
      data: {
        'code': formData['otps'],
        'email': email,
        'phoneNumber': formData['phoneNumber'],
      },
    );
  }
}
