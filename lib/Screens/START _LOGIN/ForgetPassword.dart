import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForGetScreen extends StatelessWidget {
  const ForGetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
         centerTitle: true,
         title: Text(
          'نسيت كلمة المرور',
          style: TextStyle(
              fontSize: 22.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Color(0xff336BA4)),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_forward,color: Color(0xff003298),))
        ],
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Padding(
            padding:   EdgeInsets.symmetric(vertical: 40.h,horizontal: 16.h),
            child: Column(
              children: [
                Image.asset('assets/forget.png'),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'الرجاء إدخال عنوان بريدك الإلكتروني\n لتلقي رمز التحقق',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomTextField(
                    controller: InfoGetController.to.Forget,
                    inputType:InfoGetController.to.emailInput,
                     color :Color(0xff336BA4),
                    icon_data: Icons.person,
                    hintText: 'أدخل البريد الاكتروني الخاص بك'),
                SizedBox(height: 161.h,),
                ElevatedButton(
                  onPressed: () async {

                  },
                  child: Text(
                    'إرسال رمز',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(328.w, 53.h),
                      primary: Color(0xff336BA4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.r)
                      )
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
