import 'dart:developer';

import 'package:abllseducation/Screens/START%20_LOGIN/PageView.dart';
import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';

class routapp{
  static  const String initialRoute = '/';
  static  const String pageViewRoutScreen = '/PageViewScreen';
}
class AppRouts{
  static Route? OnGenerateRout (RouteSettings routeSettings){
    switch(routeSettings.name){
      case   routapp.initialRoute:
        log(routeSettings.name.toString());
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case   routapp.pageViewRoutScreen:
        log(routeSettings.name.toString());
        return MaterialPageRoute(builder: (context) =>  const  PageViewScreen(),);
      default:
        return null;
    }
  }
}