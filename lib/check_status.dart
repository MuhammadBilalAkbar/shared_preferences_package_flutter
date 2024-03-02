import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/screens/profile_screen.dart';
import '/screens/signin_screen.dart';

class CheckStatus extends StatelessWidget {
  const CheckStatus({super.key});

  Future<bool> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final uid = prefs.getString('uid');
    if (uid == null) return false;
    return true;
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.data == false) {
            return const SignInScreen();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return const ProfileScreen();
        },
      );
}
