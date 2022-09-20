import 'package:abllseducation/Controller/HomeController/ProfileController.dart';
import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePhone extends StatelessWidget {
  const ChangePhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Color(0xffF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'تغيير رقم الجوال',
          style: TextStyle(
            fontSize: 18.sp,
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            color: Color(0xff003298),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_forward, color: Color(0xff003298))),
        ],
      ),
      body: Padding(
        padding:   EdgeInsets.symmetric(vertical:16.0.h,horizontal: 16.0.h),
        child: Column(children: [
          Container(
            width: 328.w,
            height: 53.h,
            child: CustomTextField(
              hintText: 'ادخل رقم الجوال',
              color: Color(0xff336BA4),
              icon_data: Icons.person_outline,
              controller: ProfileController.to.EditPhone,
              inputType: ProfileController.to.InputText,
              // TODO كنترولار
            ),
          ),
          SizedBox(height: 50.h,),
           ElevatedButton(
                onPressed: () {
                  },
                child: Text(
                  'تغيير',
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
             
        ]),
      ),
    );
   }
}