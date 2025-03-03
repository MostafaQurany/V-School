import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  // Private constructor to make it a singleton instance
  AppSecureStorage._();

  // set Key and value
  static Future<void> setSecureData(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
      debugPrint('Data saved successfully.');
    } catch (e) {
      throw e.toString();
    }
  }

  // get value
  static Future<String> getSecureData(String key) async {
    try {
      String? value = await _secureStorage.read(key: key);
      debugPrint('Data retrieved successfully. = $value');
      return value ?? "";
    } catch (e) {
      throw e.toString();
    }
  }
}
