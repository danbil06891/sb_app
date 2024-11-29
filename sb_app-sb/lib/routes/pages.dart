import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/auth/login/login_binding.dart';
import 'package:sbapp/screens/dashboard/auth/login/login_view.dart';
import 'package:sbapp/screens/dashboard/auth/signup/signup_binding.dart';
import 'package:sbapp/screens/dashboard/auth/signup/signup_view.dart';
import 'package:sbapp/screens/dashboard/contact_us/contact_binding.dart';
import 'package:sbapp/screens/dashboard/contact_us/contact_view.dart';
import 'package:sbapp/screens/dashboard/home/home_binding.dart';
import 'package:sbapp/screens/dashboard/home/home_view.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view_binding.dart';
import 'package:sbapp/routes/routes.dart';
import 'package:sbapp/screens/dashboard/fees/fee_binding.dart';
import 'package:sbapp/screens/dashboard/fees/fee_view.dart';
import 'package:sbapp/screens/dashboard/profile/profile_binding.dart';
import 'package:sbapp/screens/dashboard/profile/profile_view.dart';
import 'package:sbapp/screens/dashboard/location/location_binding.dart';
import 'package:sbapp/screens/dashboard/location/location_view.dart';
import 'package:sbapp/screens/dashboard/test/test_binding.dart';
import 'package:sbapp/screens/dashboard/test/test_view.dart';
import 'package:sbapp/screens/dashboard/training/training_binding.dart';
import 'package:sbapp/screens/dashboard/training/training_view.dart';

class GetPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.fee, page: () => const FeeView(), binding: FeeBinding()),
    GetPage(
        name: Routes.test, page: () => const TestVew(), binding: TestBinding()),
    GetPage(
        name: Routes.location,
        page: () => const LocationView(),
        binding: LocationBinding()),
    GetPage(
        name: Routes.training,
        page: () => const TrainingView(),
        binding: TrainingBinding()),
    GetPage(
        name: Routes.mainView,
        page: () => const MainView(),
        binding: MainViewBinding()),
    GetPage(
        name: Routes.contact,
        page: () => const ContactView(),
        binding: ContactBindng()),
    GetPage(
        name: Routes.profile,
        page: () => const ProfileView(),
        binding: ProfileBinding()),
    GetPage(
        name: Routes.signup,
        page: () => const SignupView(),
        binding: SignupBinding()),
    GetPage(
        name: Routes.login,
        page: () => const LoginView(),
        binding: LoginBinding()),
  ];
}
