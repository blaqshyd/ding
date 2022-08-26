// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:ding_app/utils/routes.dart';
import 'package:ding_app/views/entry/suggestions.dart';
import 'package:ding_app/views/screens/home/home.dart';
import 'package:ding_app/views/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'views/entry/splash_screen.dart';
import 'views/entry/login_screen.dart';
import 'views/entry/register_screen.dart';
import 'views/entry/welcome_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      routes: {
        splashRoute: (context) => SplashScreen(),
        suggestionRoute: (context) => SuggestionScreen(),
        loginRoute: (context) => LoginScreen(),
        registerRoute: (context) => RegisterScreen(),
        welcomeRoute: (context) => WelcomeScreen(),
        homeRoute: (context) => HomeScreen(),
        mainRoute: (context) => MainScreen(),
      },
    ),
  ));
}
