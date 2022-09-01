import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';

class routapp{
  static  const String initialRoute = '/';
  static  const String HomeRoutScreen = '/homeScreen';
}
class AppRouts{
  static Route? OnGenerateRout (RouteSettings routeSettings){
    switch(routeSettings.name){
      case   routapp.initialRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case   routapp.HomeRoutScreen:
         return MaterialPageRoute(builder: (context) => const Scaffold(),);
    }
  }
}