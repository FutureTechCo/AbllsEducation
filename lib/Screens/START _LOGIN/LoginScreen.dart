 import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool xx = true;
  bool xx1 = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0.h,
            ),
            child: Column(children: [
              Image.asset('assets/logo.png'),
              SizedBox(
                height: 50.h,
              ),
              ElevatedButton(
                onPressed: () {
                  // setState(() {
                  //   xx1 =false;
                  // });
                  Navigator.pushReplacementNamed(context, routapp.RegisterScreen);
                 },
                child: Text(
                  'إنشاء حساب',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(328.w, 53.h),
                    primary: Color(0xff336BA4),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xff336BA4), width: 1),
                        borderRadius: BorderRadius.circular(90.r)
                    )
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextButton(
                onPressed: () async{
                  // await FirebaseAuth.instance.signInAnonymously();
                  setState(() {
                    xx =false;
                  });
                  // Get.to(() => index(), transition: Transition.zoom);
                  Navigator.pushReplacementNamed(context, routapp.home);
                },
                child: Text(
                  'الدخول كزائر',
                  style: TextStyle(
                    color:Color(0xff336BA4),
                    fontFamily: 'Arial',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(328.w, 53.h),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff336BA4), width: 1),
                      borderRadius: BorderRadius.circular(90.r)
                    )),
              ),
              SizedBox(
                height: 11.7.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, routapp.SignInScreen);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_sharp,
                          color:  Color(0xff336BA4)
                        ),
                        Icon(
                          Icons.more_horiz,
                          color:  Color(0xff336BA4),
                        ),
                        Text(
                          'دخول',
                          style: TextStyle(
                            color:  Color(0xff336BA4),
                            fontFamily:  'Arial',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                   //    Get.to(() => SignUp_Screen());
                    },
                    child: Text(
                      'لديك حساب؟',
                      style: TextStyle(
                        color: Color(0xffADADAD) ,
                        fontFamily: 'Arial',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90.3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 36.w,
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    'حساباتنا على مواقع التواصل الاجتماعي',
                    style: TextStyle(
                      color:Color(0xffADADAD),
                      fontFamily: 'Arial',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 36.w,
                    child: Divider(
                      color: Colors.black12 ,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0.h,
              ),
            Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    GestureDetector(
                        onTap: () {
                          // controller.launchUrls(HomeGetx().to.facebook);
                        },
                        child: Image.asset('assets/facebook.png')),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          // controller.launchUrls(HomeGetx().to.GoogleMail);
                          // controller.launchUrls(HomeGetx().to.WatsApp);
                        },
                        child: Image.asset('assets/email.png')),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Image.asset('assets/twet.png')),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              SizedBox(
                height: 30.0.h,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children: [
                    Text('فكرة وإعداد وتنفيذ',
                      style: GoogleFonts.cairo(fontSize: 12.sp, color: Colors.grey,fontWeight: FontWeight.bold) ,),
                    Text('د.نور الصقر القادري',
                        style: GoogleFonts.cairo(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    Text('00218925312348',
                        style:
                        GoogleFonts.cairo(fontSize: 16.sp, fontWeight: FontWeight.bold))
                    ,SizedBox(height: 10.h,)
                  ],),
                ],
              )

            ]),
          ),
        ),
      ),
    );
  }
}
