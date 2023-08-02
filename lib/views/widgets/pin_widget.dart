
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
    required this.pinController,
    required this.textTheme,
    required bool isDarkMode,
  }) : _isDarkMode = isDarkMode;

  final TextEditingController pinController;
  final TextTheme textTheme;
  final bool _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      
        // forceErrorState: true,
        controller: pinController,
        focusedPinTheme: PinTheme(
          width: 56,
          height: 60,
          textStyle: textTheme.bodyMedium!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: _isDarkMode
                  ? MyColors.kPrimaryDarkColor
                  : MyColors.kPrimaryLight,
            ),
            // color: _defaultPinFillColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        errorPinTheme: PinTheme(
          width: 56,
          height: 60,
          textStyle: textTheme.bodyMedium!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.2,
              color: MyColors.kErrorColor,
            ),
            // color: _defaultPinFillColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        defaultPinTheme: PinTheme(
          width: 56,
          height: 60,
          textStyle: textTheme.bodyMedium!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: MyColors.kTextCaptionLight,
            ),
            // color: _defaultPinFillColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ));
  }
}
