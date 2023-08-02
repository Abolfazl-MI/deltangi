import 'package:deltangi/views/router/route_names.dart';
import 'package:deltangi/views/screens/introduction/intro_screen.dart';
import 'package:deltangi/views/screens/phone_number_screen/phone_number_screen.dart';
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
    )
  ];
}
