import 'package:delivery_on_wheels/pages/dashboard.dart';
import 'package:delivery_on_wheels/pages/forgot_password.dart';
import 'package:delivery_on_wheels/pages/landing_page.dart';
import 'package:delivery_on_wheels/pages/login_page.dart';
import 'package:delivery_on_wheels/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const LandingPage(),
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/password_reset': (context) => const ForgotPassword(),
      '/dashboard': (context) => const Dashboard(),
    },
    theme: ThemeData(
      fontFamily: "Signika_MainFont",
    ),
  ));
}
