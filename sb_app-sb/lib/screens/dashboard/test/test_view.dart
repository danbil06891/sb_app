import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_drawer.dart';
import 'package:sbapp/helper_widget/custom_history_widget.dart';
import 'package:sbapp/screens/dashboard/test/test_controller.dart';

class TestVew extends GetView<TestController> {
  const TestVew({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.9;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Test',
            style: TextStyle(fontSize: 20, color: whiteColor),
          ),
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.90,
                child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: controller.attendanceList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 16,
                            color: index == 0
                                ? green
                                : index == 1
                                    ? red
                                    : index == 2
                                        ? purple
                                        : index == 3
                                            ? darkGreen
                                            : index == 4
                                                ? blue
                                                : Colors.green,
                          ),
                          Text(
                              controller.attendanceList[index]['attendance'] ??
                                  "",
                              style: const TextStyle(
                                  fontSize: 15, color: blackColor)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 70,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      indicatorColor: Colors.transparent,
                      unselectedLabelColor: whiteColor,
                      tabs: const [
                        Tab(
                          icon: Icon(
                            Icons.calendar_month,
                            size: 40,
                          ),
                          text: 'Upcoming',
                        ),
                        Tab(
                          icon: Icon(
                            Icons.history,
                            size: 40,
                          ),
                          text: 'History ',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.trainList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 115,
                                width: size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          1, 2), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TestHistroyWidget(
                                      index: index,
                                      text: 'Mohammad Mohammad',
                                      regID: 02121000248,
                                    ),
                                    LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        if (constraints.maxWidth > 600) {
                                          return Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
                                        } else {
                                          return Container(
                                            height: 75.0,
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                                color: whiteColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                )),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                CustomHistoryWidget(
                                                  icon: Icons.calendar_month,
                                                  text: Text(
                                                    controller.trainList[index]
                                                            .date ??
                                                        '',
                                                    style: const TextStyle(
                                                        color: blackColor),
                                                  ),
                                                ),
                                                CustomHistoryWidget(
                                                  icon: Icons
                                                      .access_time_outlined,
                                                  text: Text(controller
                                                      .trainList[index].time
                                                      .toString()),
                                                ),
                                                CustomHistoryWidget(
                                                  icon: Icons.business,
                                                  text: SizedBox(
                                                    width: 80,
                                                    child: Text(
                                                      controller
                                                              .trainList[index]
                                                              .branchName ??
                                                          'Ras Al Khaimah Branch',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                        color: blackColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    // second tab bar viiew widget
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.trainList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 115,
                                width: size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          1, 2), // changes position of shadow
                                    ),
                                  ],
                                  color: blackColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TestHistroyWidget(
                                      index: index,
                                      text: 'Mohammad Mohammad',
                                      regID: 02121000248,
                                    ),
                                    LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        if (constraints.maxWidth > 600) {
                                          return Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
                                        } else {
                                          return Container(
                                            height: 75.0,
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                                color: whiteColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                )),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                CustomHistoryWidget(
                                                  icon: Icons.calendar_month,
                                                  text: Text(
                                                    controller.trainList[index]
                                                            .date ??
                                                        '',
                                                    style: const TextStyle(
                                                        color: blackColor),
                                                  ),
                                                ),
                                                CustomHistoryWidget(
                                                  icon: Icons
                                                      .access_time_outlined,
                                                  text: Text(controller
                                                      .trainList[index].time
                                                      .toString()),
                                                ),
                                                CustomHistoryWidget(
                                                  icon: Icons.business,
                                                  text: SizedBox(
                                                    width: 80,
                                                    child: Text(
                                                      controller
                                                              .trainList[index]
                                                              .branchName ??
                                                          'Ras Al Khaimah Branch',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                        color: blackColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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

class TestHistroyWidget extends StatelessWidget {
  final String? text;
  final int? regID;
  final int? index;
  const TestHistroyWidget({Key? key, this.text, this.regID = 0, this.index})
      : super(
          key: key,
        );

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: index == 0
            ? green
            : index == 1
                ? red
                : index == 3
                    ? red
                    : green,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text!,
            style: const TextStyle(color: whiteColor, fontSize: 18),
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(
                    Icons.app_registration_outlined,
                    size: 20,
                    color: whiteColor,
                  ),
                ),
                TextSpan(
                    text: regID.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
