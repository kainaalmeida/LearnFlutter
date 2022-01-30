import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static final String _key = 'key';

  static save(String user) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({'user': user, 'isAuth': true}));
  }

  static Future<bool> isAuth() async {
    var prefs = await SharedPreferences.getInstance();
    var result = prefs.getString(_key);

    if (result != null) {
      var mapper = jsonDecode(result);
      return mapper['isAuth'];
    }

    return false;
  }

  static logout() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
