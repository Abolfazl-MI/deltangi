
import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditPhoneNumber extends StatelessWidget {
  const EditPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(Assets.icons.arrowForward),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleIconButton(
            iconPath: Assets.icons.arrowLeft,
            onTap: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              LanguageConstant.changeNumber.tr,
              style: textTheme.headlineLarge!
                  .copyWith(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              LanguageConstant.enterPhoneNumber.tr,
              style: textTheme.bodyLarge!.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              onTapOutside: (value) {
                FocusScope.of(context).unfocus();
              },
            ),
          )
        ],
      ),
    );
  }
}