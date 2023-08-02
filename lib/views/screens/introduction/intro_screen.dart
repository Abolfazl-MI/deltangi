import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  bool get _isDarkMode => Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = themeData.textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: _isDarkMode
                ? MyColors.kSecondaryDarkColor
                : MyColors.kLightGrayColor,
            child: Center(
              child: SvgPicture.asset(
                _isDarkMode
                    ? Assets.icons.sunOutline
                    : Assets.icons.moonoutline,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              // color: Colors.green,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    _isDarkMode
                        ? Assets.images.introDarkCircle.path
                        : Assets.images.introLightCircle.path,
                  ),
                ),
              ),
            ),
            // StyledText(
            //   text: LanguageConstant.shareYourFelling.tr,
            //   tags: {
            //     'color': StyledTextTag(
            //       style: AppTextStyle.kHeadlineLarge.copyWith(
            //         fontSize: 21,
            //         color: themeData.primaryColor,
            //       ),
            //     )
            //   },
            // )
            Center(
              child: StyledText(
                text: LanguageConstant.shareYourFelling.tr,
                style: textTheme.headlineLarge,
                textAlign: TextAlign.center,
                tags: {
                  'color': StyledTextTag(
                      style: textTheme.headlineLarge!.copyWith(
                          color: _isDarkMode
                              ? MyColors.kPrimaryDarkColor
                              : MyColors.kPrimaryLight))
                },
              ),
            ),
            Center(
              child: Text(
                LanguageConstant.joinUs.tr,
                style: textTheme.bodyLarge!.copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Center(
                          child: Text(
                            LanguageConstant.enterWithEmail.tr,
                            style: textTheme.headlineSmall,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Center(
                            child: SvgPicture.asset(Assets.icons.googleIcon),
                          ),
                        ),
                      ],
                    ),
                    width: size.width,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: _isDarkMode
                            ? MyColors.kSecondaryDarkColor
                            : MyColors.kBackGroundColorLight,
                        boxShadow: _isDarkMode
                            ? null
                            : [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 7)
                              ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    height: 64,
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Center(
                          child: Text(
                            LanguageConstant.enterWithPhone.tr,
                            style: textTheme.headlineSmall!.copyWith(
                                fontFamily: 'iransansx',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: _isDarkMode
                              ? MyColors.kSecondaryDarkColor
                              : MyColors.kPinkColor,
                          child: Center(
                            child: SvgPicture.asset(Assets.icons.chat),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: _isDarkMode
                          ? MyColors.kPrimaryDarkColor
                          : MyColors.kPrimaryLight,
                    ),
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                  text: LanguageConstant.haveAnAccount.tr,
                  style: textTheme.bodyLarge,
                  children: [
                    WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    TextSpan(
                      text: LanguageConstant.singUp.tr,
                      style: textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: _isDarkMode
                              ? MyColors.kPrimaryDarkColor
                              : MyColors.kPrimaryLight),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
