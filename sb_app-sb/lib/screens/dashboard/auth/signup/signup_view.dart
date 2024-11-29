import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_button.dart';
import 'package:sbapp/helper_widget/custom_dropdown_button.dart';
import 'package:sbapp/helper_widget/custom_text_field_texts.dart';
import 'package:sbapp/helper_widget/custom_text_form_field.dart';
import 'package:sbapp/screens/dashboard/auth/signup/signup_controller.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainView()),
            );
          },
        ),
      ),
      backgroundColor: lightGreyColor,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const Text(
                  'Hi! Greetings from BDC',
                  style: TextStyle(color: blackColor, fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: whiteColor),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomTFT(ddText: 'Register ID'),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                              borderRadius: BorderRadius.circular(18),
                              prefixicon: const Icon(
                                Icons.app_registration_outlined,
                                color: blackColor,
                              ),
                              hinttext: 'Register ID',
                              labeltext: 'Register ID'),
                          const CustomTFT(ddText: 'Name'),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                              borderRadius: BorderRadius.circular(18),
                              prefixicon: const Icon(
                                Icons.person,
                                color: blackColor,
                              ),
                              hinttext: 'Name',
                              labeltext: 'Name'),
                          const CustomTFT(ddText: 'Password'),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                              borderRadius: BorderRadius.circular(18),
                              prefixicon: const Icon(
                                Icons.password_outlined,
                                color: blackColor,
                              ),
                              hinttext: 'Password',
                              labeltext: 'Password'),
                          const CustomTFT(ddText: 'Category'),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomDropDownButton(
                            child: Obx(
                              () => DropdownButton<String>(
                                isExpanded: true,
                                value: controller.dropdownValue.value,
                                underline: const SizedBox(),
                                hint: const Text("LMV"),
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  controller.dropdownValue.value = value!;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupView()),
                    );
                  },
                  text: 'Create Account',
                ),
                RichText(
                  text: TextSpan(
                    text: "Already have an account?",
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 18,
                    ),
                    children: [
                      const WidgetSpan(
                          child: SizedBox(
                        width: 5,
                      )),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupView()),
                            );
                          },
                        text: 'Login',
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              ],
            ),
          )
        ],
      ),
    );
  }
}
