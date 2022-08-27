import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});
final localStorageProvider =
    Provider((ref) => LocalStorage._(ref.watch(sharedPreferencesProvider)));

class LocalStorage {
  SharedPreferences sharedPreferences;

  LocalStorage._(this.sharedPreferences);

  static const String keyToken = 'KEY_USER_TOKEN';
  static const String keyUserType = 'KEY_USER_TYPE';
  static const String keyFCMToken = 'KEY_FCM';

  Future<Map<String, dynamic>?> getMap({required String key}) async {
    String? json = sharedPreferences.getString(key);

    if (json == null) return null;
    return jsonDecode(json);
  }

  Future<String?> getString({required String key}) async {
    return sharedPreferences.getString(key);
  }

  Future<bool> setMap(
      {required String key, required Map<String, dynamic> value}) async {
    return await sharedPreferences.setString(key, jsonEncode(value));
  }

  Future<bool> setString({required String key, required String value}) async {
    return await sharedPreferences.setString(key, value);
  }

  clear() async {
    await sharedPreferences.clear();
  }
}
