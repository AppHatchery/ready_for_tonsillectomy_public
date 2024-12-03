import 'dart:async' show Future;

import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static int? getTimestamp(String key) {
    return _prefsInstance?.getInt(key) ;
  }

  static String? getString(String key){
    return _prefsInstance?.getString(key);
  }

  static Future<bool> setPrefString(String key, String value) async{
    var prefs = await _instance;
    return prefs.setString(key, value);
  }

  static Future<bool> setTimestamp(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value);
  }

  static Future<void> clearPrefs(String key) async{
    await _prefsInstance?.remove(key);
  }
}