import 'package:shared_preferences/shared_preferences.dart';

class AuthController{

  static String? _userEmail;
  static String? _userPass;

  static String? get userEmail => _userEmail;
  static String? get userPass => _userPass;

  static Future<void> setUserEmail(String emailId) async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString("email_id", emailId);
    _userEmail = emailId;
    print("ID = $_userEmail");
  }

  static Future<void> setUserPass(String pass) async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString("pass_code", pass);
    _userPass = pass;
    print("ID = $_userPass");
  }

  static Future<void> getUserEmail() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    _userEmail = sp.getString("email_id");
  }

  static Future<void> getUserPass() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    _userPass = sp.getString("pass_code");
  }
}