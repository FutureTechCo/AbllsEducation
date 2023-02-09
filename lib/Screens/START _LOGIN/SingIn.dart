import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Controller/AuthController/GetxLogin.dart';
class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

   bool xx = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h,vertical: 60.h),
            child: SingleChildScrollView(
              child: Column(
                 children: [
                  SizedBox(height: 30.h,),
                  Image.asset(
                     'assets/logo.png',
                   ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text('اختيار المهارات التي تظهر في سن معينة', style:TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16.sp,
                       color: Color(0xff707070)
                  ),),
                  SizedBox(
                    height: 33.h,
                  ),
                  Container(
                      width: 321.w,
                      height: 53,
                      child: CustomTextField(
                          controller: InfoGetController.to.email_Login,
                          inputType: InfoGetController.to.emailInput,
                          color: Color(0xff336BA4),
                          hintText: 'البريد الالكتروني',
                          icon_data: Icons.email_outlined)),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                      width: 321.w,
                      height: 53,
                      child: CustomTextField(
                          controller:InfoGetController.to.password_Login ,
                          inputType: InfoGetController.to.textInput,
                          color: Color(0xff336BA4),
                          hintText: 'كلمه السر',
                          icon_data: Icons.lock_outline_rounded,
                      )),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding:   EdgeInsets.only(right: 15.0.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, routapp.FroGetScreen);
                         },
                        child: Text(
                          'نسيت كلمة المرور؟',
                          style: TextStyle(
                            color: Color(0xff336BA4),
                            fontFamily: 'Arial',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                    ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        xx =false;
                      });
                       bool x = await LoginGetx().to.performLogin(context:context);
                      setState(() {
                        xx=true;
                      });
                    },
                    child: Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        color:  Color(0xffFFFFFF),
                         fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(173.w, 55.h),
                        primary: Color(0xff336BA4),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(90.h)
                       )
                    )
                  ),

                 ],
              ),
            ),
          ),
        ));
  }
}
