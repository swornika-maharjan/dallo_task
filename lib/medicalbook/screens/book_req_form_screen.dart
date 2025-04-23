import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/medicalbook/component/dt_text_form_field.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/book_request_form_controller.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class BookReqFormScreen extends StatelessWidget {
  BookReqFormScreen({super.key});
  final BookRequestFormController controller = Get.put(
    BookRequestFormController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,
        actionsPadding: EdgeInsets.only(right: 10),
        title: Text(
          'Book request form',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: FormBuilder(
            key: controller.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Your full name',
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
                  borderColor: DTColor.platinum,
                  hintText: 'Enter Your Full Name',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),

                  attribute: 'fullname',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Name cannot be empty!',
                    ),
                  ]),
                  onChange: (value) {
                    controller.updateFormData('fullname', value);
                  },
                ),

                SizedBox(height: 15),

                Row(
                  children: [
                    Text(
                      'Email address',
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
                  borderColor: DTColor.platinum,
                  attribute: 'email',
                  hintText: 'Enter Your Email Address',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Email cannot be empty!',
                    ),
                    FormBuilderValidators.email(
                      errorText: 'Enter a valid email address!',
                    ),
                  ]),
                  onChange: (value) {
                    controller.updateFormData('email', value);
                  },
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Contact number',
                      style: header7.copyWith(color: DTColor.bookTitleBlack),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(Preferably WhatsApp number)',
                      style: header7.copyWith(
                        color: DTColor.textFieldHintColor,
                      ),
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
                  borderColor: DTColor.platinum,
                  attribute: 'contact',
                  hintText: 'Enter Your Contact Number',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
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
                  onChange: (value) {
                    controller.updateFormData('contact', value);
                  },
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Book title',
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
                  borderColor: DTColor.platinum,
                  attribute: 'booktitle',
                  hintText: 'Enter Book Title',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Book title cannot be empty!',
                    ),
                  ]),
                  onChange: (value) {
                    controller.updateFormData('booktitle', value);
                  },
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Author name',
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
                  borderColor: DTColor.platinum,
                  attribute: 'authorname',
                  hintText: 'Enter Author Name',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Please write author name!',
                    ),
                  ]),
                  onChange: (value) {
                    controller.updateFormData('authorname', value);
                  },
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Quantity required',
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
                  borderColor: DTColor.platinum,
                  attribute: 'quantityrequired',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'Enter Required quantity',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Please enter required quantity',
                    ),
                    FormBuilderValidators.numeric(
                      errorText: 'Please enter numbers',
                    ),
                  ]),
                  onChange: (value) {
                    controller.updateFormData('quantityrequired', value);
                  },
                ),

                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Urgency level',
                      style: header7.copyWith(color: DTColor.bookTitleBlack),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(How soon you need this book?)',
                      style: header7.copyWith(
                        color: DTColor.textFieldHintColor,
                      ),
                    ),

                    Text(
                      '*',
                      style: header7.copyWith(
                        fontWeight: FontWeight.w500,
                        color: DTColor.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),

                Obx(
                  () => Wrap(
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    children:
                        List.generate(controller.formController.length, (
                          index,
                        ) {
                          final item = controller.formController[index];
                          final isselected = controller.selectedIndex == index;

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: GestureDetector(
                              onTap: () => controller.selectIndex(index),
                              child: ComponentWrapper(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 15,
                                ),
                                backgroundColor:
                                    isselected
                                        ? DTColor.orangeLite
                                        : DTColor.white,

                                borderColor:
                                    isselected
                                        ? DTColor.orange
                                        : DTColor.platinum,

                                borderWidth: isselected ? 2 : 1,
                                child: Text(
                                  item,
                                  style: header7.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: DTColor.academyBlue,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ),

                SizedBox(height: 15),
                Text(
                  'Additional information of the request',
                  style: header7.copyWith(color: DTColor.bookTitleBlack),
                ),
                SizedBox(height: 10),
                DTTextFormField(
                  hintText: 'Additional info here',
                  hintStyle: header6.copyWith(
                    color: DTColor.textFieldHintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  borderColor: DTColor.platinum,
                  maxLines: 5,
                  attribute: 'additionalinfo',
                  keyboardType: TextInputType.multiline,
                  obscureText: false,

                  onChange: (value) {},
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => controller.submitForm(),
                  // onTap: () {
                  //   controller.submitForm();
                  //   Get.to(() => MedicalBookScreen());
                  // },
                  child: ComponentWrapper(
                    backgroundColor: DTColor.orange,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: 380,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: header5.copyWith(
                          color: DTColor.white,
                          fontWeight: FontWeight.w600,
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
