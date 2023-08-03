import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';

class FindYourPartner extends StatelessWidget {
  const FindYourPartner({super.key});
  bool get _isDarkMode => Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: SvgPicture.asset(Assets.icons.arrowForward),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                LanguageConstant.skip,
                style: textTheme.bodyMedium!.copyWith(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: CircleIconButton(
              iconPath: _isDarkMode
                  ? Assets.icons.sunOutline
                  : Assets.icons.moonoutline,
              onTap: () {}),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              // TODO number3
              radius: 80,
              backgroundColor: _isDarkMode
                  ? MyColors.kPrimaryDarkColor
                  : MyColors.kPrimaryLight,
              child: Icon(
                CupertinoIcons.add,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              LanguageConstant.fineYourPartner.tr,
              style: textTheme.headlineLarge,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              LanguageConstant.enterYourPartnerId.tr,
              style: textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: LanguageConstant.typeSomeThing.tr,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
