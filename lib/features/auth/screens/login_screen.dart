import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/features/auth/components/reusable_components.dart';
import 'package:flutterproject/features/auth/controllers/login_screen_controller.dart';
import 'package:flutterproject/features/course/screens/course_list_screen.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key}); // Removed the form key from here

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey =
      GlobalKey<FormBuilderState>(); // Moved inside the state class
  final LoginController controller = Get.put(LoginController());
  bool showPassword = false; // Local state for show/hide password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),

      body: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(padding: const EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      DTTextFormField(
                        onChanged: (value) {
                          controller.updateFormData('email', value);
                        },
                        hintText: 'abc@gmail.com',
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
                        prefixIcon: const Icon(Icons.email),
                        suffixIcon: null,
                      ),

                      const SizedBox(height: 20),

                      // Password Field
                      Obx(
                        () => DTTextFormField(
                          onChanged: (value) {
                            controller.updateFormData('password', value);
                          },
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Password cannot be empty',
                            ),
                          ]),
                          obscureText:
                              !controller.showPassword, // Controlled by GetX
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              controller.togglePasswordVisibility();
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.login();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CourseListScreen(),
                              ),
                            );
                          }
                        },
                        color: Colors.cyan,
                        minWidth: double.infinity,
                        child: const Text('Login'),
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
