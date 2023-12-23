import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SPStringPlugins {
  StreamController<String> streamController = StreamController<
      String>.broadcast();
  final SharedPreferences _prefs;

  static SPStringPlugins? _instance;

  SPStringPlugins._(this._prefs);

  static Future<SPStringPlugins> getInstance() async {
    if (_instance == null) {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      _instance = SPStringPlugins._(sharedPreferences);
    }
    return _instance!;
  }

  Future<void> spSetData(String setData) async {
    await _prefs.setString("string", setData);
    streamController.add(setData);
  }

  Future<void> spGetData() async {
    String stringData = _prefs.getString("string") ?? "";
    streamController.add(stringData);
  }
}