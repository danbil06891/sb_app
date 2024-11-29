import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/screens/dashboard/home/home_view.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: BottomAppBar(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                  );
                },
                icon: const Icon(
                  Icons.home,
                  size: 32,
                  color: whiteColor,
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Log out  ",
                        style: TextStyle(color: whiteColor, fontSize: 20)),
                    WidgetSpan(
                      child: Icon(
                        Icons.logout,
                        size: 20,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
