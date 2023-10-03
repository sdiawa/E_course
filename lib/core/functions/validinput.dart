import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Nom d'utilisateur non valide";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "email non valide ";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Numéro de téléphone non valide";
    }
  }

  if (val.isEmpty) {
    return "Ne peut pas être vide";
  }

  if (val.length < min) {
    return "Ne peut pas être inférieur à$min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}
