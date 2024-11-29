import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_bottom_nav_app.dart';
import 'package:sbapp/helper_widget/custom_button.dart';
import 'package:sbapp/helper_widget/custom_drawer.dart';
import 'package:sbapp/screens/dashboard/fees/fee_controller.dart';
import 'package:sbapp/screens/dashboard/fees/widgets/fees_history_widget.dart';
import 'package:sbapp/screens/dashboard/fees/widgets/layout_builder_widget.dart';

class FeeView extends GetView<FeeController> {
  const FeeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.9;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Fees',
          style: TextStyle(fontSize: 20, color: whiteColor),
        ),
      ),
      bottomNavigationBar: const BottomApp(),
      drawer: const CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.circle,
                          size: 15,
                          color: green,
                        ),
                      ),
                      TextSpan(
                          text: " Paid",
                          style: TextStyle(color: blackColor, fontSize: 15)),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.circle,
                          size: 15,
                          color: redColor,
                        ),
                      ),
                      TextSpan(
                          text: " Unpaid",
                          style: TextStyle(color: blackColor, fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.history,
            text: 'Payment History',
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
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
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                1, 2), // changes position of shadow
                          ),
                        ], borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FeesHistroyWidget(
                              index: index,
                              text: 'Mohammad Mohammad',
                              regID: 02121000248,
                            ),
                            LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                if (constraints.maxWidth > 600) {
                                  return _buildWideContainers();
                                } else {
                                  return Container(
                                    height: 75.0,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        color: whiteColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FeeScreenLayoutBuilderWidget(
                                              icon: Icons.calendar_month,
                                              text: Text(
                                                controller.trainList[index]
                                                        .date ??
                                                    '',
                                                style: const TextStyle(
                                                    color: blackColor),
                                              ),
                                            ),
                                            FeeScreenLayoutBuilderWidget(
                                              icon: Icons.business,
                                              text: SizedBox(
                                                width: 80,
                                                child: Text(
                                                  controller.trainList[index]
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FeeScreenLayoutBuilderWidget(
                                              icon: Icons.access_time_outlined,
                                              text: Text(controller
                                                  .trainList[index].time
                                                  .toString()),
                                            ),
                                          ],
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
          ),
        ],
      ),
    );
  }
}

// Widget _buildNormalContainer(index) {
//   List<TrainingModel> trainList = [];

//   return Container(
//     height: 75.0,
//     width: double.infinity,
//     color: whiteColor,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         UpcomingWidget(
//           icon: Icons.calendar_month,
//           text: Text(
//             trainList[index].date ?? '',
//             style: const TextStyle(color: blackColor),
//           ),
//         ),
//         UpcomingWidget(
//           icon: Icons.access_time_outlined,
//           text: Text(trainList[index].time.toString()),
//         ),
//         UpcomingWidget(
//           icon: Icons.business,
//           text: SizedBox(
//             width: 80,
//             child: Text(
//               trainList[index].branchName ?? 'Ras Al Khaimah Branch',
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//               style: const TextStyle(
//                 color: blackColor,
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

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
