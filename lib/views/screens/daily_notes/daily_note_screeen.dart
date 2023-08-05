import 'package:deltangi/controllers/language_controller.dart';
import 'package:deltangi/gen/assets.gen.dart';
import 'package:deltangi/views/widgets/icon_button_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyNoteScreen extends StatelessWidget {
  const DailyNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: ElevatedButton(
          child: Text(
            LanguageConstant.send.tr,
            style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          onPressed: () {}),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          Center(
            child: Text(
              LanguageConstant.dailyNote.tr,
              style: textTheme.headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                LanguageConstant.youCouldWriteDailyNotes.tr,
                maxLines: 2,
                style: textTheme.bodyMedium!.copyWith(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: TextField(
                expands: true,
                maxLines: null,
                onTapOutside: (value) {
                  FocusScope.of(context).unfocus();
                },
                textAlignVertical: TextAlignVertical.top,
                style: textTheme.bodyLarge!.copyWith(fontSize: 15),
                decoration: InputDecoration(
                  hintText: LanguageConstant.typeSomeThing.tr,
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
