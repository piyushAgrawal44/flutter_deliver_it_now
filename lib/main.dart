import 'package:delivery_on_wheels/pages/dashboard.dart';
import 'package:delivery_on_wheels/pages/forgot_password.dart';
import 'package:delivery_on_wheels/pages/landing_page.dart';
import 'package:delivery_on_wheels/pages/login_page.dart';
import 'package:delivery_on_wheels/pages/new_order.dart';
import 'package:delivery_on_wheels/pages/new_trip.dart';
import 'package:delivery_on_wheels/pages/register_page.dart';
import 'package:delivery_on_wheels/pages/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/test': (context) => const CardListItem(
            isLoading: true,
          ),
      '/': (context) => const LandingPage(),
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/password_reset': (context) => const ForgotPassword(),
      '/dashboard': (context) => const Dashboard(),
      '/new-trip': (context) => const NewTrip(),
      '/new-order': (context) => const NewOrder(),
    },
    theme: ThemeData(
      fontFamily: "Signika_MainFont",
    ),
  ));
}
