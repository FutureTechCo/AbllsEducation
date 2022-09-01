import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin Helper {
  void ShowSnackBar(
      {required BuildContext context,
      required String Message,
      required bool Error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.up,
         backgroundColor: Colors.transparent,
         elevation: 0,
         width: 350,
        content: Container(
          width: double.infinity.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
              color: Error == false ? Colors.red:Colors.green,
          ),
          child: Center(
            child: Text(
              Message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,

      ),
    );
  }
}