import 'package:abllseducation/Utils/HelperError.dart';
import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Text(
            'المعلومات\t\t',
            style: TextStyle(
              // color: HomeGetxVar().to.color6,
              // fontFamily: HomeGetxVar().to.font_Family,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.h),
          child: Column(
            children: [
              Container(
                width: 321.w,
                height: 53.h,
                child: CustomTextField(
                    // controller: LoginGetx().to.INameController,
                    // inputType: LoginGetx().text_input,
                    // font_Family: HomeGetxVar().to.font_Family,
                    // color: HomeGetxVar().to.color6,
                    hintText: 'الأسم الكامل',
                    icon_data: Icons.person),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      //         controller: LoginGetx().to.IPhoneController,
                      //         inputType: LoginGetx().text_input,
                      //         font_Family: HomeGetxVar().to.font_Family,
                      //         color: HomeGetxVar().to.color6,
                      hintText: 'رقم الجوال',
                      icon_data: Icons.phone)),
              SizedBox(
                height: 16.h,
              ),
              Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      //         controller: LoginGetx().to.ICountryController,
                      //         inputType: LoginGetx().text_input,
                      //         font_Family: HomeGetxVar().to.font_Family,
                      //         color: HomeGetxVar().to.color6,
                      hintText: 'الدوله',
                      icon_data: Icons.location_on_rounded)),
              SizedBox(
                height: 16.h,
              ),
               Container(
                 width: 321.w,
                 height: 53.h,
                 child: CustomTextField(
              //       controller: LoginGetx().to.ICityController,
              //       inputType: LoginGetx().text_input,
              //       font_Family: HomeGetxVar().to.font_Family,
              //       color: HomeGetxVar().to.color6,
                     hintText: 'المدينه',
                     icon_data: Icons.location_city),
              ),
              SizedBox(
                height: 36.h,
              ),
              ElevatedButton(
                onPressed: () async {},
                child: Text(
                  'حفظ',
                  style: TextStyle(
                    // color: HomeGetxVar().to.color4,
                    // fontFamily: HomeGetxVar().to.font_Family,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(328.w, 53.h), primary: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
