class AppLink {

  static const String server = "http://172.28.0.1:8085/ecourse";
//
  static const String test = "$server/test.php";


  //========================================AUTH=================================

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";

  //========================================ForgetPassword=================================

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";



}
