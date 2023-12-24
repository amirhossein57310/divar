import 'package:divar_application/screens/advertize_category_screen.dart';
import 'package:divar_application/screens/dashboard_screen.dart';

import 'package:divar_application/screens/home_advertize_screen.dart';
import 'package:divar_application/screens/login_screen.dart';
import 'package:divar_application/screens/profile_screen.dart';
import 'package:divar_application/screens/register_advertise_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const DivarApp());
}

class DivarApp extends StatelessWidget {
  const DivarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashBoardScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/advertize_category': (context) => AdvertizeCategoryScreen(),
        '/login': (context) => const LoginScreen(),
        '/home_advertise': (context) => const HomeAdvertiseScreen(),
        '/register_advertise': (context) => const RegisterAdvertiseScreen(),
      },
    );
  }
}
