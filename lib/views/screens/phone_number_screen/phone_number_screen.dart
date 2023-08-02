import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});
  bool get _isDarkMode => Get.isDarkMode;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    Size size = MediaQuery.of(context).size;
    bool _isRtl = Directionality.of(context) == TextDirection.rtl;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(Assets.icons.arrowForward),
      ),
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  LanguageConstant.youPhoneNumber.tr,
                  style: textTheme.headlineLarge,
                ),
              ),
              Center(
                child: Text(
                  LanguageConstant.pleaseEnterPhoneNumber.tr,
                  style: textTheme.headlineSmall,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _selectCountryCode(size, textTheme, _isRtl),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: IntlPhoneField(
                        
                        showDropdownIcon: false,
                        invalidNumberMessage: LanguageConstant.invalidPhone.tr,
                        flagsButtonPadding: EdgeInsets.all(8),
                        decoration: InputDecoration(
                            hintText: LanguageConstant.examplePhoneNumber.tr,
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: MyColors.kTextCaptionLight,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _selectCountryCode(Size size, TextTheme textTheme, bool _isRtl) {
    //TODO:number1
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: size.width,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LanguageConstant.countryCode.tr,
              style: textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(_isRtl
                  ? Assets.icons.leftArrowSmall
                  : Assets.icons.rightArrowSmall),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: MyColors.kTextCaptionLight,
            )),
      ),
    );
  }

  AppBar _appbar() {
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
