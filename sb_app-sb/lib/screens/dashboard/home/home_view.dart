import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_drawer.dart';
import 'package:sbapp/helper_widget/custom_history_widget.dart';
import 'package:sbapp/helper_widget/custom_text_field_texts.dart';
import 'package:sbapp/screens/dashboard/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.8;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Greeting Mohammad !'),
      ),
      drawer: const CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 170,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, carouselPageChangeReason) {
                      controller.dotPostion.value = index;
                    },
                  ),
                  items: controller.carouselImages.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(i),
                                  fit: BoxFit.fitWidth)),
                        );
                      },
                    );
                  }).toList(),
                ),
                Obx(
                  () => DotsIndicator(
                    dotsCount: controller.carouselImages.isEmpty
                        ? 1
                        : controller.carouselImages.length,
                    position: controller.dotPostion.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeColor: primaryColor,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 15.0, // gap between adjacent chips
                  runSpacing: 12.0, // gap between lines
                  children: <Widget>[
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.on_device_training,
                      text: 'Training',
                    ),
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.folder,
                      text: 'Test',
                    ),
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.person,
                      text: 'Fees',
                    ),
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.location_on,
                      text: 'Location',
                    ),
                    BoxWidget(
                      onTap: () {},
                      icon: Icons.settings,
                      text: 'Setting',
                    )
                  ],
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: CustomTFT(
                    ddText: 'Upcoming Activities',
                    textStyle: TextStyle(fontSize: 22, color: primaryColor),
                  ),
                ),
                if (MediaQuery.of(context).orientation == Orientation.landscape)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  height: 90,
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    color: primaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        child: Text(
                          'Practical Training',
                          style: TextStyle(color: whiteColor, fontSize: 16),
                        ),
                      ),
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          if (constraints.maxWidth > 600) {
                            return _buildWideContainers();
                          } else {
                            return _buildNormalContainer();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomAppBar(
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.notifications_active,
                  size: 30,
                  color: whiteColor,
                ),
                Icon(
                  Icons.message,
                  size: 30,
                  color: whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final MainAxisAlignment? mainAxisAlignment;
  final void Function()? onTap;
  const BoxWidget(
      {Key? key, this.icon, this.text = '', this.onTap, this.mainAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.15
                : MediaQuery.of(context).size.height * 0.40,
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.width * 0.27
                : MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(1, 2), // changes position of shadow
                ),
              ],
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.07
                          : MediaQuery.of(context).size.height * 0.2,
                  color: whiteColor,
                ),
                Text(
                  text!,
                  style: const TextStyle(color: whiteColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildNormalContainer() {
  return Container(
    height: 65.0,
    width: double.infinity,
    color: whiteColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CustomHistoryWidget(
          icon: Icons.calendar_month,
          text: Text(
            '2018-8-19',
            style: TextStyle(color: blackColor),
          ),
        ),
        CustomHistoryWidget(
          icon: Icons.access_time_outlined,
          text: Text('10:00 AM'),
        ),
        CustomHistoryWidget(
          icon: Icons.business,
          text: SizedBox(
            width: 70,
            child: Text(
              'Ras Al Khaima Branch fdafdafda',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: blackColor,
              ),
            ),
          ),
        ),
      ],
    ),
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
