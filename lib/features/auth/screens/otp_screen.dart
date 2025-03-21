import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/features/auth/controllers/otp_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OtpController controller = Get.put(OtpController());
  final email = Get.arguments['email'] ?? "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP screen')),
      body: FormBuilder(
        key: widget._formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text('$email'),
              const SizedBox(height: 50),
              Padding(padding: const EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          controller.updateFormData('otps', value);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Enter OTP',
                          hintText: 'Enter OTP',
                        ),
                        validator: (value) {
                          FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'OTP cannot be empty',
                            ),
                            FormBuilderValidators.numeric(
                              errorText: 'OTP must be numeric',
                            ),
                          ]);
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      MaterialButton(
                        onPressed: () {
                          if (widget._formKey.currentState!.validate()) {
                            print('otp verified');
                            controller.verifyotp(email);
                          }
                        },
                        color: Colors.cyan,
                        minWidth: double.infinity,
                        child: Text('Verify'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
