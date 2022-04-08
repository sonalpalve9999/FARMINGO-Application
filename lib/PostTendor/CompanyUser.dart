import 'dart:convert';

import 'Comdata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CompanyUser {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static Comuser myUser = Comuser(
    
    name: 'Sonal Palve',
   
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(Comuser user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static Comuser getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : Comuser.fromJson(jsonDecode(json));
  }
}