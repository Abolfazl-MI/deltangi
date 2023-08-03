import 'package:get/route_manager.dart';

class LanguageConstant {
  LanguageConstant._();
  static const String shareYourFelling = 'share_your_felling';
  static const String joinUs = 'join_us';
  static const String enterWithEmail = 'enter_with_email';
  static const String enterWithPhone = 'enter_with_phone';
  static const String haveAnAccount = 'have_an_account';
  static const String singUp = 'signUp';
  static const String youPhoneNumber = 'your_phone_number';
  static const String pleaseEnterPhoneNumber = 'please_enter_your_phone_number';
  static const String countryCode = 'country_code';
  static const String examplePhoneNumber = 'example_phone_number';
  static const String invalidPhone = 'invalid_phone_number';
  static const String verification = 'verification';
  static const String weHaveSentCode = 'we_have_sent_code';
  static const String choiceYourProfile = 'choice_your_profile';
  static const String yourName = 'your_name';
  static const String typeSomeThing = 'type_something';
  static const String skip = 'skip';
  static const String fineYourPartner = 'find_your_partner';
  static const String enterYourPartnerId = 'enter_your_partner_id';
  static const String notification = 'notification';
  static const String yesterday = 'yesterday';
  static const String seeAll = 'seeAll';
  static const String missYou = 'missYou';
  static const String sentYou = 'sentYou';
  static const String today = 'today';
  static const String todayMessageCount = 'today_message_count';
  static const String minAgo = 'a_min_ago';
}

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "fa_IR": {
          LanguageConstant.todayMessageCount: 'تعداد پیام های امروز',
          LanguageConstant.today: 'امروز',
          LanguageConstant.notification: 'اعلانات',
          LanguageConstant.yesterday: 'دیروز',
          LanguageConstant.seeAll: 'دیدن همه',
          LanguageConstant.sentYou: 'برای شما ارسال کرد',
          LanguageConstant.missYou: '💗دلم برات تنگ شده',
          LanguageConstant.shareYourFelling:
              "احساسات خودت با  <color>پارتنرت</color> به اشتراک بزار",
          LanguageConstant.joinUs:
              "به ما ملحق شو و احساسات خودتو به راحتی به اشتراک بزار و سریع باخبرش کن",
          LanguageConstant.enterWithEmail: 'ورود با ایمیل',
          LanguageConstant.enterWithPhone: 'ورود با شماره تلفن همراه',
          LanguageConstant.haveAnAccount: 'قبلا ثبت نام کرده اید؟',
          LanguageConstant.singUp: "ورود",
          LanguageConstant.youPhoneNumber: 'شماره تلفن شما',
          LanguageConstant.pleaseEnterPhoneNumber:
              'لطفا شماره تلفن خود را وارد کنید',
          LanguageConstant.countryCode: "کد کشور",
          LanguageConstant.examplePhoneNumber: '۰۹۰۲۶۵۹۰۵۱۴',
          LanguageConstant.invalidPhone: 'شماره تلفن وارد شده صحیح نمیباشد',
          LanguageConstant.verification: 'تایید صلاحیت',
          LanguageConstant.weHaveSentCode:
              "ما یک کد پنج رقمی به شماره شما ارسال کردیم",
          LanguageConstant.choiceYourProfile: 'پروفایل خود را انتخاب کنید',
          LanguageConstant.yourName: 'نام‌ شما',
          LanguageConstant.typeSomeThing: 'چیزی تایپ کنید',
          LanguageConstant.skip: "بعدی",
          LanguageConstant.fineYourPartner: 'پارتنرتو پیدا کن',
          LanguageConstant.enterYourPartnerId:
              'شماره تلفن یا ایمیل پارتنرت رو وارد کن بهش متصل شو', 
          LanguageConstant.minAgo:'دقیقه قبل',
        },
        "en_US": {
          LanguageConstant.minAgo:'minute ago',
          LanguageConstant.shareYourFelling:
              "Share your feeling with your <color>partner</color>",
          LanguageConstant.joinUs: "Join us and share your felling easily",
          LanguageConstant.enterWithEmail: "Login with email",
          LanguageConstant.enterWithPhone: 'Login with phone',
          LanguageConstant.haveAnAccount: 'Have an account?',
          LanguageConstant.singUp: "sign in",
          LanguageConstant.youPhoneNumber: 'Your phone number',
          LanguageConstant.pleaseEnterPhoneNumber:
              'Please Enter your phone number',
          LanguageConstant.countryCode: 'Country code',
          LanguageConstant.examplePhoneNumber: '0903964423246',
          LanguageConstant.invalidPhone: 'Invalid phone number',
          LanguageConstant.verification: 'Verification',
          LanguageConstant.weHaveSentCode:
              'We\'ve sent activision code to your phone',
          LanguageConstant.choiceYourProfile: 'Choice your profile',
          LanguageConstant.yourName: 'your name:',
          LanguageConstant.typeSomeThing: 'type something...',
          LanguageConstant.skip: 'skip',
          LanguageConstant.fineYourPartner: 'Find your partner',
          LanguageConstant.enterYourPartnerId:
              'Enter your partner’s phone number or Email',
          LanguageConstant.notification: 'Notification',
          LanguageConstant.yesterday: 'yesterday',
          LanguageConstant.seeAll: 'See all',
          LanguageConstant.sentYou: 'send you',
          LanguageConstant.missYou: 'I miss you 💗',
          LanguageConstant.today: 'Today',
          LanguageConstant.todayMessageCount: 'Today’s messages'
        },
      };
}
