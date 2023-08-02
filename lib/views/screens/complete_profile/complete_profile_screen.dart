import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
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
                )),
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
                  : MyColors.kPrimaryDarkColor,
              child: Transform.scale(
                  scale: 2,
                  child: SvgPicture.asset(
                    Assets.icons.camera,
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              LanguageConstant.choiceYourProfile.tr,
              style: textTheme.headlineLarge,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  LanguageConstant.yourName.tr,
                  style: textTheme.bodyLarge!.copyWith(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
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
          )
        ],
      ),
    );
  }
}
