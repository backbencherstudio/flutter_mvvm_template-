import 'package:shared_preferences/shared_preferences.dart';

class TokenStorage {
  static const _key = "token";

  Future<void> saveToken(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, userId);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key);
  }

  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}