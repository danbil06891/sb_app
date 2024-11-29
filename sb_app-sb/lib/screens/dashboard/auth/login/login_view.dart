import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_button.dart';
import 'package:sbapp/helper_widget/custom_text_field_texts.dart';
import 'package:sbapp/helper_widget/custom_text_form_field.dart';
import 'package:sbapp/screens/dashboard/auth/login/login_controller.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        shrinkWrap: false,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                GestureDetector(
                  onTap: () async {
                    final XFile? pickImage = await ImagePicker().pickImage(
                        source: ImageSource.gallery, imageQuality: 50);
                    if (pickImage != null) {
                      controller.profilePic.value = pickImage.path;
                    }
                  },
                  child: Obx(
                    () => controller.profilePic.value == ''
                        ? CircleAvatar(
                            radius: 60,
                            backgroundColor: whiteColor,
                            child: Image.asset('assets/images/profile.png',
                                fit: BoxFit.fill, width: 130, height: 130),
                          )
                        : controller.profilePic.value.contains('http')
                            ? CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    NetworkImage(controller.profilePic.value))
                            : CircleAvatar(
                                radius: 60,
                                backgroundImage: FileImage(
                                    File(controller.profilePic.value)),
                              ),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomTFT(ddText: 'User ID'),
                        CustomTextFormField(
                            borderRadius: BorderRadius.circular(30),
                            prefixicon: const Icon(
                              Icons.app_registration_outlined,
                              color: blackColor,
                            ),
                            hinttext: 'Register ID',
                            labeltext: 'Register ID'),
                      ],
                    ),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomTFT(ddText: 'Password'),
                        Obx(
                          () => CustomTextFormField(
                              borderRadius: BorderRadius.circular(30),
                              prefixicon: const Icon(
                                Icons.password,
                                color: blackColor,
                              ),
                              maxLines: 1,
                              obscuretext: controller.isPasswordHidden.value,
                              suffixicon: InkWell(
                                child: controller.isPasswordHidden.value
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onTap: () {
                                  controller.isPasswordHidden.value =
                                      !controller.isPasswordHidden.value;
                                },
                              ),
                              hinttext: 'Password',
                              labeltext: 'Password'),
                        ),
                      ],
                    ),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                  text: 'Login',
                  icon: Icons.login,
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                RichText(
                  text: const TextSpan(
                    text: "Keep me signed in",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 17,
                    ),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Forgot Password? |",
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
                                        builder: (context) =>
                                            const LoginView()),
                                  );
                                },
                              text: 'Sign Up',
                              style: const TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
