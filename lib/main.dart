import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Controller/HomeController/ProfileController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/pdf.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pod_player/pod_player.dart';
import 'Controller/AuthController/GetxLogin.dart';
import 'Controller/AuthController/userController.dart';
import 'Controller/HomeController/HomeController.dart';
import 'Controller/HomeController/MenuController.dart';
import 'Controller/HomeGetxVar.dart';
import 'Controller/SharedPreferences/SharedPreferences.dart';
import 'Controller/get_rebort_controtter/get_rebort.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  PodVideoPlayer.enableLogs = true;
  await Firebase.initializeApp();
  createPdf.init();
  Get.put(InfoGetController());
  Get.put(menuController());
  Get.put(ProfileController());
  Get.put(HomeController());
  Get.put(userController());
  Get.put(get_rebort());
  await Get.put(HomeGetxVar());
  await SharedPreferencesApp().MethodeInitSharedPref();

  await Get.put(LoginGetx());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (context , child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ABA Toolkit',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRouts.OnGenerateRout,
        );
      }
     );
  }
}