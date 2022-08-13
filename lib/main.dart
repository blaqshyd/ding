// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:ding_app/utils/routes.dart';
import 'package:flutter/material.dart';

import 'views/login_screen.dart';
import 'views/register_screen.dart';
import 'views/splash_screen.dart';
import 'views/welcome_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      routes: {
        splashRoute: (context) => SplashScreen(),
        loginRoute: (context) => LoginScreen(),
        registerRoute: (context) => RegisterScreen(),
        welcomeRoute: (context) => WelcomeScreen(),
      },
    ),
  ));
}
