import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Utils/HelperError.dart';
import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InformationScreen extends StatefulWidget with Helper {
  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  //
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, routapp.LoginScreen);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: GetBuilder<InfoGetController>(builder: (controller){
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.h),
            child: Column(
              children: [
                InkWell (
                    onTap: (){},
                    child: Image.asset('assets/add.png')),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      controller: InfoGetController.to.name,
                      inputType: InfoGetController.to.textInput,
                      color: Color(0xff336BA4),
                      hintText: 'الأسم الكامل',
                      icon_data: Icons.person_outline),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                    width: 321.w,
                    height: 53.h,
                    child: CustomTextField(
                        controller: InfoGetController.to.email,
                        inputType: InfoGetController.to.emailInput,
                        hintText: 'البريد الالكتروني',
                        color: Color(0xff336BA4),
                        icon_data: Icons.email_outlined)),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                    width: 321.w,
                    height: 53.h,
                    child: CustomTextField(
                        controller: InfoGetController.to.password,
                        inputType: InfoGetController.to.textInput,
                        hintText: 'كلمة السر',
                        color: Color(0xff336BA4),
                        icon_data: Icons.lock_outline_rounded)),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                    width: 321.w,
                    height: 53.h,
                    child: CustomTextField(
                        controller: InfoGetController.to.country,
                        inputType: InfoGetController.to.textInput,
                        color: Color(0xff336BA4),
                        hintText: 'الدولة',
                        icon_data: Icons.location_on_outlined)),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      color: Color(0xff336BA4),
                      controller: InfoGetController.to.phone,
                      inputType: InfoGetController.to.textInput,
                      hintText: 'رقم الجوال',
                      icon_data: Icons.phone_outlined),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: InfoGetController.to.ilp, onChanged: (bool? val) {
                            InfoGetController.to.SetilpVal(val!);
                          },side: BorderSide(
                            color: Colors.blue,
                            width: 2.w
                          ),),
                          Text('أخصائي',style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                              color: Colors.blue
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: InfoGetController.to.spe, onChanged: (bool? val) {
                            InfoGetController.to.SetspeVal(val!);
                          },side: BorderSide(
                            color: Colors.blue,                            width: 2.w

                          ),),
                          Text('ولي الأمر',style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                              color: Colors.blue
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 85.h,
                ),
                ElevatedButton(
                  onPressed: () async {},
                  child: Text(
                    'تأكيد',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(173.w, 55.h),
                      primary: Color(0xff336BA4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.r))),
                ),
              ],
            ),
          ),
        );
      },)
    );
  }
}
