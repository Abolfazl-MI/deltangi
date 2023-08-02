import 'package:deltangi/views/router/route_names.dart';
import 'package:deltangi/views/screens/complete_profile/complete_profile_screen.dart';
import 'package:deltangi/views/screens/introduction/intro_screen.dart';
import 'package:deltangi/views/screens/phone_number_screen/phone_number_screen.dart';
import 'package:deltangi/views/screens/verifycode/verify_cdoe_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRouter {
  static List<GetPage> pages = [
    GetPage(
      name: AppRouteNames.introductionScreen,
      page: () => IntroductionScreen(),
    ),
    GetPage(
      name: AppRouteNames.phoneNumberScreen,
      page: () => PhoneNumberScreen(),
    ),
    GetPage(
      name: AppRouteNames.verifyCodeScreen,
      page: () => VerifyCodeScreen(),
    ),
    GetPage(
        name: AppRouteNames.completeProfileScreen,
        page: () => CompleteProfileScreen())
  ];
}
