import 'package:shared_preferences/shared_preferences.dart';

abstract class AppStorage {
  Future<void> setToken(String token);

  Future<String?> getToken();
}

class AppStorageImpl implements AppStorage {
  SharedPreferences? prefs;

  @override
  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs!.getString('token');
  }

  @override
  Future<void> setToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    prefs!.setString('token', token);
  }
}
