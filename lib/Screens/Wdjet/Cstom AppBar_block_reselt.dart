import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class cstomAppBar_block_reselt extends StatelessWidget {
 late int x;
 late int y;
  cstomAppBar_block_reselt( x , y){
    this.x=x;
    this.y =y;
  }
  @override
  Widget build(BuildContext context) {
    int x=this.x;
    int y=this.y;
    return Container(
      width: double.infinity,
      height: 90.h,
      decoration:  BoxDecoration(
        color: Color(0xffF6F6F6),
        boxShadow: [
          BoxShadow(
            color: Color(0xffF1EDED),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.r),
          bottomRight: Radius.circular(25.r),
        ),
      ),
      child: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding:   EdgeInsets.symmetric(horizontal: 2*8.0.h,vertical: 2*8.h),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 320.w,
                      height:80.h ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(onTap:((){
                            Navigator.pop(context);
                          }),
                              child: Icon(Icons.arrow_back,color: Color(0xff003298),size: 22,)),
                          SizedBox(width: 10.w),
                          Text(
                            'النتائج',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                              color: Color(0xff003298),
                            ),),
                          Spacer(),
                          Text(
                            "${x}/${y}",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                              color: Color(0xff003298),
                            ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )),
      ),
    );
  }
}
