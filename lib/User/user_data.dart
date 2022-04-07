import 'dart:convert';

import 'user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';

  static User myUser = User(
    image:
        "https://upload.wikimedia.org/wikipedia/commons/1/1a/Jo_Kay_-_Those_Green_Eyes_%281431777290%29.jpg",
    name: 'Sonal Palve',
    email: 'sonal29@gmail.com',
    phone: '9987652435',
    aboutMeDescription:
        'I have green leafy vegetables , Fresh Juicy fruits And Evergreen colorful flowers',
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}