import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_button.dart';
import 'package:sbapp/routes/routes.dart';
import 'package:sbapp/screens/dashboard/auth/login/login_view.dart';
import 'package:sbapp/screens/dashboard/auth/signup/signup_view.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view_controller.dart';

class MainView extends GetView<MainViewController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        margin: const EdgeInsets.only(left: 35, top: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
              height: 150,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Welcome to Belhasa Driving Center \n Student Application',
              style: TextStyle(color: whiteColor, fontSize: 20),
            ),
            Column(
              children: [
                CustomButton(
                  onTap: () {
                    Get.toNamed(Routes.signup);
                  },
                  text: 'Sign up',
                ),
                CustomButton(
                  text: 'Login',
                  onTap: () {
                    Get.toNamed(Routes.login);
                  },
                ),
                CustomButton(
                  text: 'Home',
                  onTap: () {
                    Get.toNamed(Routes.home);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
