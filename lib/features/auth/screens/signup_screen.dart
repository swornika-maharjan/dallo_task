import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/features/auth/components/reusable_components.dart';
import 'package:flutterproject/features/auth/controllers/signup_screen_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupScreenController controller = Get.put(SignupScreenController());
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')),
      body: Obx(
        () => SingleChildScrollView(
          child: FormBuilder(
            key: widget._formKey,
            child: Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20),
                ), // This line can be removed as it does nothing
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                        BorderSide(color: Colors.grey),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('firstName', value);
                          },
                          hintText: 'Enter your first name',
                          labelText: 'First Name',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Name cannot be empty',
                            ),
                          ]),
                          obscureText: false,
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: null,
                        ),
                        const SizedBox(height: 20),
                        DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('lastName', value);
                          },
                          hintText: 'Enter your last name',
                          labelText: 'Last Name',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Name cannot be empty',
                            ),
                          ]),
                          obscureText: false,
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: null,
                        ),
                        const SizedBox(height: 20),
                        DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('email', value);
                          },
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Email cannot be empty',
                            ),
                            FormBuilderValidators.email(
                              errorText: 'Enter a valid email',
                            ),
                          ]),
                          obscureText: false,
                          prefixIcon: Icon(Icons.email),
                          suffixIcon: null,
                        ),
                        const SizedBox(height: 20),

                        DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('password', value);
                          },
                          hintText: 'Enter your password',
                          labelText: 'Password',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Password cannot be empty',
                            ),
                          ]),
                          obscureText: controller.showPassword,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed:
                                () => controller.togglePasswordVisibility(),
                          ),
                        ),

                        const SizedBox(height: 20),

                        DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('confirmPassword', value);
                          },
                          hintText: 'Re-enter your password',
                          labelText: 'Confirm Password',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Password cannot be empty',
                            ),
                            FormBuilderValidators.equal(
                              controller.formData['password'] ?? '',
                              errorText: 'Passwords do not match',
                            ),
                          ]),
                          obscureText: controller.showPassword,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed:
                                () => controller.togglePasswordVisibility(),
                          ),
                        ),

                        const SizedBox(height: 20),
                        MaterialButton(
                          onPressed: () {
                            if (widget._formKey.currentState!.validate()) {
                              print('Signup Successful!');
                              controller.signup();
                            }
                          },
                          color: Colors.cyan,
                          minWidth: double.infinity,
                          child: Text('Signup'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
