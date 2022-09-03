import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(InfoGetController());
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