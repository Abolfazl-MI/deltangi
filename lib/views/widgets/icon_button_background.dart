import 'package:deltangi/views/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {super.key, required this.iconPath, required this.onTap});
  bool get _isDarkMode => Get.isDarkMode;
  final String iconPath;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor:
            _isDarkMode ? MyColors.kTextCaptionLight : MyColors.kLightGrayColor,
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            color: _isDarkMode ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
