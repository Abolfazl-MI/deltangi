import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:deltangi/views/widgets/pin_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  bool get _isDarkMode => Get.isDarkMode;
  TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LanguageConstant.verification.tr,
              style: textTheme.headlineLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              LanguageConstant.weHaveSentCode.tr,
              style: textTheme.bodyMedium!.copyWith(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            // TODO_numr_2
            Text(
              '+98 9039644243',
              style: textTheme.bodyMedium!.copyWith(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            PinCodeWidget(
                pinController: pinController,
                textTheme: textTheme,
                isDarkMode: _isDarkMode)
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        SizedBox(
          width: 10,
        ),
        CircleIconButton(
            iconPath: _isDarkMode
                ? Assets.icons.sunOutline
                : Assets.icons.moonoutline,
            onTap: () {}),
        SizedBox(width: 10),
      ],
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleIconButton(
          iconPath: Assets.icons.arrowLeft,
          onTap: () {},
        ),
      ),
    );
  }
}
