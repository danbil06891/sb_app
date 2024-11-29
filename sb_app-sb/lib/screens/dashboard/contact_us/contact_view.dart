import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';
import 'package:sbapp/helper_widget/custom_bottom_nav_app.dart';
import 'package:sbapp/helper_widget/custom_button.dart';
import 'package:sbapp/helper_widget/custom_drawer.dart';
import 'package:sbapp/helper_widget/custom_text_field_texts.dart';
import 'package:sbapp/helper_widget/custom_text_form_field.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: lightGreyColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          title: const Text(
            'Contact Us',
            style: TextStyle(fontSize: 20, color: whiteColor),
          ),
        ),
        bottomNavigationBar: const BottomApp(),
        drawer: const CustomDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.85,
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
                            child: Text('Contact Us',
                                style: TextStyle(fontSize: 18)),
                          ),
                          Tab(
                            child: Text('Feed Back',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      'Share your Details to us we \n will contact you as soon',
                      style: TextStyle(color: blackColor, fontSize: 20),
                    ),
                    SizedBox(
                      height: 350,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TabBarView(
                        viewportFraction: 1,
                        children: [
                          // first tab bar view widget
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: whiteColor),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTFT(ddText: 'Register ID'),
                                  CustomTextFormField(
                                      borderRadius: BorderRadius.circular(18),
                                      prefixicon: const Icon(
                                        Icons.app_registration_outlined,
                                        color: blackColor,
                                      ),
                                      hinttext: 'Register ID',
                                      labeltext: 'Register ID'),
                                  CustomTFT(ddText: 'Name'),
                                  CustomTextFormField(
                                      borderRadius: BorderRadius.circular(18),
                                      prefixicon: const Icon(
                                        Icons.person,
                                        color: blackColor,
                                      ),
                                      hinttext: 'Name',
                                      labeltext: 'Name'),
                                  CustomTFT(ddText: 'Message'),
                                  CustomTextFormField(
                                      contentPadding:
                                          const EdgeInsets.only(top: 18),
                                      borderRadius: BorderRadius.circular(18),
                                      hinttext: 'Write your message here',
                                      keyboardtype: TextInputType.multiline,
                                      prefixicon: const Icon(
                                        Icons.message,
                                        color: blackColor,
                                      ),
                                      maxLines: null,
                                      labeltext: 'Message'),
                                ],
                              ),
                            ),
                          ),

                          // second tab bar viiew widget
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/location_placeholder.PNG'),
                              fit: BoxFit.contain,
                            )),
                          )
                        ],
                      ),
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainView()),
                        );
                      },
                      text: 'Submit',
                      icon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
