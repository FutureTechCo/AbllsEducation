import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/Information_Screen.dart';
import 'package:abllseducation/Screens/START%20_LOGIN/PageView.dart';
import 'package:abllseducation/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABA Toolkit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/PageViewScreen': (context) => const PageViewScreen(),
        '/InformationScreen':(context) => InformationScreen(),
      },
      );
  }
}