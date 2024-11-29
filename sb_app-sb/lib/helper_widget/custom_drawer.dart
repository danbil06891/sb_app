import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbapp/constants/color_constant.dart';

import '../routes/routes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: primaryColor),
            currentAccountPicture: Container(
              width: 15.0,
              height: 15.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                  ),
                ),
              ),
            ),
            accountName: Container(
              child: const Text('Danish Asghar'),
            ),
            accountEmail: Container(
              child: const Text('danishasghar9263@gmail.com'),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.male),
            title: const Text('Profile'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.profile);
            },
          ),
          ListTile(
            leading: const Icon(Icons.model_training_rounded),
            title: const Text('Training'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.training);
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: const Text('Test'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.test);
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('Fees'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.fee);
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.location);
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Contact'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(Routes.contact);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: primaryColor,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              'Logout',
            ),
            leading: const Icon(
              Icons.logout,
              color: primaryColor,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
