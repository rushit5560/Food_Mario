
import 'package:food_mario/constants/messages.dart';

class FieldValidator {

  String? validateMobileNumber(String value) {
    if (value.isEmpty) {
      return AppMessages.mobileNumberIsRequired;
    } else if (value.length < 8) {
      return AppMessages.enterAtLeastEightDigitMobileNumber;
    } else if (value == "00000000") {
      return AppMessages.pleaseEnterValidMobileNumber;
    }
    return null;
  }

  String? validateEmail(String value) {
    String emailRegExp =
        AppMessages.emailExpMatch;
    if (value.isEmpty) {
      return AppMessages.pleaseEnterEmailAddress;
    } else if (!isNumeric(value) && !RegExp(emailRegExp).hasMatch(value)) {
      return AppMessages.invalidEmailAddress;
    } else {
      return null;
    }
  }
  bool isNumeric(String s) {
    if (s.isEmpty) {
      return false;
    }
    return double.tryParse(s) != null;
  }


  String? validateEmailOrPassword(String value) {
    String emailRegExp =
        AppMessages.emailExpMatch;
    if (value.isEmpty) {
      return AppMessages.pleaseEnterEmailAddress;
    } else if (!isNumeric(value) && !RegExp(emailRegExp).hasMatch(value)) {
      return AppMessages.invalidEmailAddress;
  } else if (value.length < 8) {
  return AppMessages.enterAtLeastEightDigitMobileNumber;
  } else if (value == "00000000") {
  return AppMessages.pleaseEnterValidMobileNumber;
  } else {
      return null;
    }
  }

}
