import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VisualSettingScreen extends StatelessWidget {
  const VisualSettingScreen({super.key});
  bool get _isDarkMode => Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    bool _isRtl = Directionality.of(context) == TextDirection.rtl;
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text(
          LanguageConstant.applyChanges.tr,
          style: textTheme.bodyMedium,
        ),
      ),
      appBar: AppBar(
        backgroundColor: _isDarkMode ? MyColors.kBlack : Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleIconButton(
            iconPath: Assets.icons.arrowLeft,
            onTap: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.icons.messages,
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  LanguageConstant.visualSetting.tr,
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: _isDarkMode ? MyColors.kSurfaceColorDark : Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  LanguageConstant.fontSize.tr,
                  style: textTheme.bodyLarge!.copyWith(
                      color: _isDarkMode
                          ? MyColors.kPrimaryDarkColor
                          : MyColors.kPrimaryLight),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 0.5,
                      thumbShape: RoundSliderThumbShape(
                        disabledThumbRadius: 3.4,
                        enabledThumbRadius: 10,
                      ),
                    ),
                    child: Slider(
                      value: 24,
                      onChanged: (value) {},
                      min: 0,
                      max: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    LanguageConstant.lorem.tr,
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge,
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: _isDarkMode ? MyColors.kSurfaceColorDark : Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LanguageConstant.setting.tr,
                  style: textTheme.bodyLarge!.copyWith(
                      color: _isDarkMode
                          ? MyColors.kPrimaryDarkColor
                          : MyColors.kPrimaryLight),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LanguageConstant.darkMode.tr,
                      style: textTheme.bodyMedium!.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.black,
                        ),
                        Switch(value: false, onChanged: (value) {})
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LanguageConstant.applyImageToBackground.tr,
                      style: textTheme.bodyMedium!.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.black,
                        ),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
