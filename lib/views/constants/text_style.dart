import 'package:flutter/material.dart';

const kWeightRegular = FontWeight.w500;
const kWeightBold = FontWeight.w700;
const kWeightBlack = FontWeight.w900;

class AppTextStyle {
  static const TextStyle kBodyMedium = TextStyle(
    fontWeight: kWeightRegular,
    fontSize: 10,
  );

  static const TextStyle kLabelSmall = TextStyle(
    fontWeight: kWeightRegular,
    fontSize: 12,
  );

  static const TextStyle kTitleLarge = TextStyle(
    fontWeight: kWeightRegular,
    fontFamily: 'yekan',
    fontSize: 15,
  );

  static const TextStyle kBodyLarge = TextStyle(
    fontWeight: kWeightRegular,
    fontSize: 12,
  );

  static const TextStyle kBodySmall = TextStyle(
    fontWeight: kWeightRegular,
    fontSize: 9,
  );
  static const TextStyle kHeadlineLarge = TextStyle(
    fontWeight: kWeightBold,
    fontFamily: 'yekan',
    fontSize: 24,
  );
   static const TextStyle kHeadlineSmall = TextStyle(
    fontWeight: kWeightRegular,
    fontFamily: 'yekan',
    fontSize: 16,
  );
}
