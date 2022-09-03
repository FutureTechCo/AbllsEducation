import 'dart:developer';

import 'package:abllseducation/Screens/START%20_LOGIN/ForgetPassword.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/Information_Screen.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/PageView.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/SingIn.dart';
import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';

import '../Screens/START _LOGIN/LoginScreen.dart';
import '../Screens/pplication interface/home.dart';

class routapp {
  static const String initialRoute = '/';
  static const String pageViewRoutScreen = '/PageViewScreen';
  static const String InformationScreen = '/InformationScreen';
  static const String LoginScreen = '/LoginScreen';
  static const String home = '/home';
  static const String SignInScreen = '/SignInScreen';
  static const String FroGetScreen = '/FroGetScreen';
}

class AppRouts {
  static Route? OnGenerateRout(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case routapp.initialRoute:
         return MaterialPageRoute(builder: (context) => SplashScreen());
      case routapp.pageViewRoutScreen:
         return MaterialPageRoute(
          builder: (context) => const PageViewScreen(),
        );
      case routapp.InformationScreen:
        return MaterialPageRoute(
          builder: (context) => InformationScreen(),
        );
      case routapp.LoginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case routapp.home:
        return MaterialPageRoute(
          builder: (context) => home(),
        );
      case routapp.SignInScreen:
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );
        case routapp.FroGetScreen:
        return MaterialPageRoute(
          builder: (context) => ForGetScreen(),
        );
      default:
        return null;
    }
  }
}
