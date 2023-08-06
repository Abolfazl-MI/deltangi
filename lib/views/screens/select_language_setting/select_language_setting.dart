import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

List<String> languages =
    List.generate(30, (index) => '${LanguageConstant.language.tr}$index');

class SelectLanguageSetting extends StatelessWidget {
  const SelectLanguageSetting({super.key});
  bool get _isDarkMode => Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageConstant.selectYourLanguage.tr),
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
            child: SvgPicture.asset(
              Assets.icons.search,
              color: _isDarkMode ? Colors.white : MyColors.tinet3,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 32, bottom: 19, left: 24, right: 24),
              child: Text(
                LanguageConstant.language.tr,
                style: textTheme.titleLarge!.copyWith(
                    color: _isDarkMode
                        ? MyColors.kPrimaryDarkColor
                        : MyColors.kPrimaryLight,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                          child: Row(
                            children: [
                              Radio(
                                value: languages[index],
                                groupValue: languages,
                                onChanged: (value) {},
                              ),
                              // ListTile(
                              //   title: Text(
                              //     languages[index],
                              //     style: textTheme.bodyMedium,
                              //   ),
                              //   subtitle: Text(languages[index]),
                              // )
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        languages[index],
                                        style: textTheme.titleLarge,
                                      ),
                                      Text(languages[index])
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1.5,
                                              color: _isDarkMode
                                                  ? MyColors.kSurfaceColorDark
                                                  : MyColors.kDisableColor))),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
