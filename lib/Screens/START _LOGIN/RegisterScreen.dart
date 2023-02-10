import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controller/AuthController/GetxLogin.dart';

import '../../Controller/HomeGetxVar.dart';
import '../../Utils/customTextFild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool xx = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
               'assets/logo.png',
                width: 126.w,
                height: 139.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'اختيار المهارات التي تظهر في سن معينة',
                style: TextStyle(
                  fontFamily: HomeGetxVar().to.font_Family,
                  color: Color(0xff336BA4),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 38.h,
              ),
              Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      controller: LoginGetx().to.SEmailController,
                      inputType: LoginGetx().to.email_input,
                      color: Color(0xff336BA4),
                      hintText: 'البريد الالكتروني',
                      icon_data: Icons.person)),
              SizedBox(
                height: 16.h,
              ),
              Container(
                  width: 321.w,
                  height: 53,
                  child: CustomTextField(
                      controller: LoginGetx().to.SPasswordController,
                      inputType: LoginGetx().to.text_input,
                      color: Color(0xff336BA4),
                      hintText: 'كلمة المرور',
                      icon_data: Icons.lock)),

              SizedBox(
                height: 16.h,
              ),
              Container(
                  width: 321.w,
                  height: 53,
                  child: CustomTextField(
                      controller: LoginGetx().to.SPasswordConfirmController,
                      inputType: LoginGetx().to.text_input,
                      color: Color(0xff336BA4),
                      hintText: 'كلمة المرور',
                      icon_data: Icons.lock)),

              SizedBox(
                height: 30.h,
              ),

              xx == true?   ElevatedButton(
                  onPressed: () async{
                    setState(() {
                      xx =false;
                    });
                    // await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: 'hamza@gmail.com', password: 'password');
                    await LoginGetx()
                        .to
                        .SignInWithPasswordAndEmail(context);
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
              ):CircularProgressIndicator(color: Colors.deepPurple,),
            ],
          ),
        ),
      ),
    );
  }
}
