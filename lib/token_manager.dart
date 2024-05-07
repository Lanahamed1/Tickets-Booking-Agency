 import 'package:shared_preferences/shared_preferences.dart';

 class TokenManager {
   static Future<void> saveToken(String token) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.setString('token', token);
   }

   static Future<String?> getToken() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return prefs.getString('token');
   }
   static Future<void> clearToken() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.remove('token');
   }
 }
 Future<void> logOut() async {
  try {
    // Clear the token using TokenManager
    await TokenManager.clearToken();
    print('Logged out successfully');
    // You can perform any other cleanup tasks here
  } catch (error) {
    print('Error logging out: $error');
  }
}