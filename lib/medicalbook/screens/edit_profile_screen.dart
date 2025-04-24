import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/medicalbook/component/dt_radio_button_field.dart';
import 'package:flutterproject/medicalbook/component/dt_text_form_field.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/edit_profile_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final EditProfileController controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,
        title: Text(
          'Edit Profile',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: controller.formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Full name',
                      style: header7.copyWith(color: DTColor.bookTitleBlack),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '*',
                      style: header5.copyWith(
                        fontWeight: FontWeight.w500,
                        color: DTColor.transParentRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                DTTextFormField(
                  onChange: (val) => controller.updateFormData('name', val),
                  attribute: 'name',
                  hintText: 'Enter your Full Name',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  borderColor: DTColor.platinum,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Name cannot be empty!',
                    ),
                  ]),
                ),

                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Email Address',
                      style: header7.copyWith(color: DTColor.bookTitleBlack),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '*',
                      style: header5.copyWith(
                        fontWeight: FontWeight.w500,
                        color: DTColor.transParentRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                DTTextFormField(
                  onChange: (val) => controller.updateFormData('email', val),
                  attribute: 'email',
                  hintText: 'Enter your Email Address',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  borderColor: DTColor.platinum,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Email cannot be empty!',
                    ),
                    FormBuilderValidators.email(
                      errorText: 'Enter a valid email address!',
                    ),
                  ]),
                ),

                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Email Address',
                      style: header7.copyWith(color: DTColor.bookTitleBlack),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '*',
                      style: header5.copyWith(
                        fontWeight: FontWeight.w500,
                        color: DTColor.transParentRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                DTTextFormField(
                  onChange: (val) => controller.updateFormData('contact', val),
                  attribute: 'contact',
                  hintText: 'Enter your Contact Number',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  borderColor: DTColor.platinum,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Please enter your contact number!',
                    ),
                    FormBuilderValidators.numeric(
                      errorText: 'Only numbers are allowed!',
                    ),
                    FormBuilderValidators.minLength(
                      10,
                      errorText: 'Contact number must be at least 10 digits!',
                    ),
                  ]),
                ),

                SizedBox(height: 10),
                Text(
                  'Gender:',
                  style: header7.copyWith(
                    fontWeight: FontWeight.w500,
                    color: DTColor.bookTitleBlack,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DTRadio(value: 'Male', text: 'Male'),
                    DTRadio(value: 'Female', text: 'Female'),
                    DTRadio(value: 'Others', text: 'Others'),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Upload Image',
                  style: header7.copyWith(color: DTColor.bookTitleBlack),
                ),
                SizedBox(height: 10),
                Obx(() {
                  final image = controller.imageFile.value;
                  return Row(
                    mainAxisAlignment:
                        image == null
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => controller.pickImage(ImageSource.gallery),
                        child: SvgPicture.asset(
                          'assets/samiksha/selectimage.svg',
                        ),
                      ),
                      if (image != null)
                        ComponentWrapper(
                          width: 156,
                          padding: EdgeInsets.zero,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.file(
                                  fit: BoxFit.cover,
                                  controller.imageFile.value!,
                                  height: 156,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => controller.removeImage(),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      color: DTColor.red,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                }),

                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => controller.submitProfile(),
                  child: ComponentWrapper(
                    backgroundColor: DTColor.orange,
                    width: 380,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    radius: 4,
                    child: Center(
                      child: Text(
                        'Edit profile',
                        style: header5.copyWith(
                          fontWeight: FontWeight.w600,
                          color: DTColor.white,
                        ),
                      ),
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
