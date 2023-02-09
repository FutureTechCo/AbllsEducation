import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'Controller/AuthController/GetxLogin.dart';
import 'Controller/AuthController/userController.dart';
import 'Controller/SharedPreferences/SharedPreferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),() async{
      if(SharedPreferencesApp().GetLlgin){
        print("111111111");
        userController.to.get_data_user(id: SharedPreferencesApp().GetIdUser);

        Navigator.pushReplacementNamed(context, routapp.home);

      }else{
        print('000000000000');
        Navigator.pushReplacementNamed(context, routapp.pageViewRoutScreen);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body:Center(child: Image.asset('assets/logo.png')),
    );
  }
}
