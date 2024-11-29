import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_bottom_nav_app.dart';
import 'package:sbapp/helper_widget/custom_drawer.dart';

import 'location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          title: const Text(
            'Location',
            style: TextStyle(fontSize: 20, color: whiteColor),
          ),
        ),
        bottomNavigationBar: const BottomApp(),
        drawer: const CustomDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: greyColor),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: whiteColor,
                  tabs: const [
                    Tab(
                      child:
                          Text('Main Branch', style: TextStyle(fontSize: 18)),
                    ),
                    Tab(
                      child:
                          Text('Training Area', style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                            'assets/images/location_placeholder.PNG'),
                        fit: BoxFit.contain,
                      )),
                    ),
                  ),

                  // second tab bar viiew widget
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                            'assets/images/location_placeholder.PNG'),
                        fit: BoxFit.contain,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
