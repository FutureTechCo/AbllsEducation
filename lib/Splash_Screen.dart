import 'package:abllseducation/Screens/START%20_LOGIN/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context, routapp.pageViewRoutScreen));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body:Center(child: Image.asset('assets/logo.png')),
    );
  }
}
