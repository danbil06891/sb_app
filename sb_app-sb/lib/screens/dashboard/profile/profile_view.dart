import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_bottom_nav_app.dart';
import 'package:sbapp/screens/dashboard/profile/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.35;
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/logo.png')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Mohammad Mohammad',
                    style: TextStyle(color: whiteColor, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        WidgetSpan(
                          child:
                              Icon(Icons.app_registration_outlined, size: 20),
                        ),
                        TextSpan(
                            text: " 121478763", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  return _buildWideContainers();
                } else {
                  return _buildNormalContainer(context);
                }
              },
            )
          ],
        ),
        bottomNavigationBar: const BottomApp());
  }
}

Widget _buildNormalContainer(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.app_registration_outlined, size: 20),
                  ),
                  TextSpan(
                      text: " Student ID:",
                      style: TextStyle(color: blackColor, fontSize: 20)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: const Text(
              '12134654654',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      const Divider(
        thickness: 2,
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.phone, size: 20),
                  ),
                  TextSpan(
                      text: " Mobile:",
                      style: TextStyle(color: blackColor, fontSize: 20)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: const Text(
              '971 58 000 0000',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      const Divider(
        thickness: 2,
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.car_crash, size: 20),
                  ),
                  TextSpan(
                      text: " Category:",
                      style: TextStyle(color: blackColor, fontSize: 20)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: const Text(
              'LMV',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      const Divider(
        thickness: 2,
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.app_registration_outlined, size: 20),
                  ),
                  TextSpan(
                      text: " Branch:",
                      style: TextStyle(color: blackColor, fontSize: 20)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: const Text(
              'Ras Al Khaimah',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildWideContainers() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ),
  );
}
