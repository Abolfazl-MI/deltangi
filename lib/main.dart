import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/views/constants/theme.dart';
import 'package:deltangi/views/router/route_names.dart';
import 'package:deltangi/views/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

/* locale: const Locale('fa', 'IR'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', ''),
        Locale('en', ''),
      ], */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deltangi',
      theme: AppThemeManager.lightMode,
      darkTheme: AppThemeManager.darkMode,
      themeMode: ThemeMode.light,
      translations: Language(),
      getPages: AppRouter.pages,
      initialRoute: AppRouteNames.editPhoneNumberScreen,
      locale: Locale('en', 'Us'),
      fallbackLocale: Locale('en', 'US'),
    );
  }
}
