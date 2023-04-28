import 'package:abllseducation/Screens/Menu/app.dart';
import 'package:abllseducation/Screens/Menu/helpScreen.dart';
import 'package:abllseducation/Screens/Profile/ChangeCantery.dart';
import 'package:abllseducation/Screens/Profile/ChangeName.dart';
import 'package:abllseducation/Screens/Profile/ChangePaswword.dart';
import 'package:abllseducation/Screens/Profile/ChangePhone.dart';
import 'package:abllseducation/Screens/Profile/EditProfileScreen.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/ForgetPassword.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/PageView.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/SingIn.dart';
import 'package:abllseducation/Screens/pplication%20interface/findLevel.dart';
import 'package:abllseducation/Screens/pplication%20interface/totel_.dart';
import 'package:abllseducation/Screens/pplication%20interface/vadeo_screen.dart';
import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';
import '../MonthlySubscription.dart';
import '../MonthlySubscription.dart';
import '../Screens/START _LOGIN/LoginScreen.dart';
import '../Screens/START _LOGIN/RegisterScreen.dart';
import '../Screens/START _LOGIN/infrmation.dart';
import '../Screens/pplication interface/home.dart';
import 'package:abllseducation/Screens/Profile/ProfileScreen.dart';

import '../Screens/sub_screen/block_reselt.dart';
import '../Screens/sub_screen/reselt.dart';
 class routapp {
  static const String initialRoute = '/';
  static const String pageViewRoutScreen = '/PageViewScreen';
  static const String InformationScreen = '/InformationScreen';
  static const String LoginScreen = '/LoginScreen';
  static const String home = '/home';
  static const String SignInScreen = '/SignInScreen';
  static const String FroGetScreen = '/FroGetScreen';
  static const String AboutAppScreen = '/AboutAppScreen';
  static const String helpScreen = '/helpScreen';
  static const String Profile_Screen = '/ProfileScreen';
  static const String EditProfileScreen = '/EditProfileScreen';
  static const String ChangeNameScreen = '/ChangeNameScreen';
  static const String ChangePhoneScreen = '/ChangePhoneScreen';
  static const String ChangeCanteryScreen = '/ChangeCanteryScreen';
  static const String ChangePaswwordScreen = '/ChangePaswwordScreen';
  static const String vadeo_screen = '/vadeo_screen';
  static const String totel_ ='/totel_';
  static const String FindeLevel ='/FindeLevel';
  static const String RegisterScreen ='/RegisterScreen';
  static const String MonthlySubscription ='/MonthlySubscription';
  static const String block_reselt='/block_reselt';
  static const String results ='/results';
  static const String  SplashScreen ='/SplashScreen';
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
      case routapp.results:
        return MaterialPageRoute(
          builder: (context) => const reselt(),
        );
      case routapp.InformationScreen:
        return MaterialPageRoute(
          builder: (context) =>const InformationScreen(),
        );
      case routapp.LoginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
     /* case routapp.block_reselt:
        return MaterialPageRoute(
          builder: (context) => block_reselt(),
        );*/
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
          builder: (context) =>const ForGetScreen(),
        );
      case routapp.AboutAppScreen:
        return MaterialPageRoute(
          builder: (context) => AboutAppScreen(),
        );
      case routapp.helpScreen:
        return MaterialPageRoute(
          builder: (context) => helpScreen(),
        );
      case routapp.Profile_Screen:
        return MaterialPageRoute(
          builder: (context) => ProfilesScreen(),
        );
      case routapp.EditProfileScreen:
        return MaterialPageRoute(
          builder: (context) => EditProfileScreen(),
        );
      case routapp.ChangeNameScreen:
        return MaterialPageRoute(
          builder: (context) => ChangeName(),
        );
      case routapp.ChangePhoneScreen:
        return MaterialPageRoute(
          builder: (context) => ChangePhone(),
        );
      case routapp.ChangeCanteryScreen:
        return MaterialPageRoute(
          builder: (context) => ChangeCantery(),
        );
      case routapp.ChangePaswwordScreen:
        return MaterialPageRoute(
          builder: (context) => ChangePaswword(),
        );
      case routapp.vadeo_screen:
        return MaterialPageRoute(
          builder: (context) => vadeo_screen(),
        );
      case routapp.totel_:
        return MaterialPageRoute(
          builder: (context) => totel_(),
        );
        case routapp.FindeLevel:
        return MaterialPageRoute(
          builder: (context) => FindeLevel(),
        );
      case routapp.RegisterScreen:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );
        case routapp.MonthlySubscription:
        return MaterialPageRoute(
          builder: (context) => MonthlySubscription(),
        );
      default:
        return null;
    }
  }
}
