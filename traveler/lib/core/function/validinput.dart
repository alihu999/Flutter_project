import 'package:get/get.dart';

validinput(String val, int max, int min, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid Email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone Number";
    }
  }
  if (val.length > max) {
    return "can't be larger $max";
  }
  if (val.length < min) {
    return "can't be less $min";
  }
  if (val.isEmpty) {
    return "can't be empty";
  }
}
