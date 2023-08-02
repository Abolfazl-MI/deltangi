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
}

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "fa_IR": {
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
          LanguageConstant.invalidPhone:'شماره تلفن وارد شده صحیح نمیباشد'
        },
        "en_US": {
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
          LanguageConstant.invalidPhone:'Invalid phone number'
        },
      };
}
