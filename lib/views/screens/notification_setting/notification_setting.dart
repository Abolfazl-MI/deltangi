import 'dart:developer';

import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

var fakeData = List.generate(30, (index) {
  DateTime dateTime = index % 4 == 0
      ? DateTime.now()
      : DateTime.now().subtract(Duration(days: index + 1));
  return {
    "sentDate": dateTime.toString(),
    "userName": "Abolfazl Masshdi$index"
  };
});
String _getDateTitle(DateTime dateTime) {
  final DateFormat formatter = DateFormat('yyyy/MM/dd');
  final formatted_date = formatter.format(dateTime);
  final todayDate = formatter.format(DateTime.now());
  final yesterDay =
      formatter.format(DateTime.now().subtract(Duration(days: 1)));
  if (formatted_date == todayDate) {
    return LanguageConstant.today.tr;
  }
  if (formatted_date == yesterDay) {
    return LanguageConstant.yesterday.tr;
  }
  return formatted_date;
}



class NotificationSettingScreen extends StatelessWidget {
  const NotificationSettingScreen({super.key});
  bool get _isDarkMode => Get.isDarkMode;

  @override
  Widget build(BuildContext context) {
    // var result = groupMessages(fakeData);
    // log('groupping ressults' + result.toString());
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    // print(fakeData);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: _isDarkMode ? MyColors.kBlack : Colors.white,
          elevation: 3,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.notification,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    LanguageConstant.notification.tr,
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            )
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleIconButton(
              iconPath: Assets.icons.arrowLeft,
              onTap: () {},
            ),
          ),
        ),
      ),
      body: Container(
        // color: Colors.green,
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: 32, right: 32, left: 32),
              sliver: SliverList.builder(
                  itemCount: fakeData.length,
                  itemBuilder: (context, index) {
                    return _dataCard(index, textTheme, size);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Container _dataCard(int index, TextTheme textTheme, Size size) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              _getDateTitle(DateTime.parse(fakeData[index]['sentDate']!)),
              style: textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '${LanguageConstant.todayMessageCount.tr}:24',
              style: textTheme.bodyMedium!.copyWith(fontSize: 18),
            ),
          ),
          for (int index = 0; index < 3; index++) ...[_userCard(textTheme)],
          SizedBox(
            height: 15,
          ),
          _seeAll(size, textTheme)
        ],
      ),
    );
  }

  _seeAll(Size size, TextTheme textTheme) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.06,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 3,
            ),
          ),
          Container(
            // color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Text(
              LanguageConstant.seeAll.tr,
              style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: _isDarkMode
                      ? MyColors.kBackGroundColorLight
                      : MyColors.kBlack),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: MyColors.kTextCaptionLight, width: 1.5)),
          ),
          Expanded(
            child: Divider(
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }

  Container _userCard(TextTheme textTheme) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: MyColors.kSurfaceColorDark))),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.images.images.path),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // username
                  Text(
                    'ابوالفضل مشهدی',
                    style: textTheme.bodyMedium!.copyWith(
                        fontSize: 15,
                        color: _isDarkMode ? MyColors.kPrimaryDarkColor : null),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    LanguageConstant.missYou.tr,
                    style: textTheme.bodyMedium!.copyWith(fontSize: 15),
                  )
                ],
              ),
              Text('${LanguageConstant.minAgo.tr}:4')
            ],
          ),
        ],
      ),
    );
  }
}
