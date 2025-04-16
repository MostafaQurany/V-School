import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  // Singleton instance
  AppSecureStorage._();
  static final AppSecureStorage _instance = AppSecureStorage._();

  // Secure storage for sensitive data
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // save the secure storage
  static Future<void> saveData(
      {required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  // retrieve the secure storage data
  static Future<String?> getData(String key) async {
    return await _secureStorage.read(key: key);
  }

  // delete the secure storage data
  static Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }
}
