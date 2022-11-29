import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CstomAppar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88.h,
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
              child: Row(
                children: [
                  SizedBox(
                      width: 144.w,
                      height: 50.h,
                      child: Row(
                        children: [
                          Container(
                            width: 45.w,height: 45.h,
                            child: Image.network(
                                'https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png'),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'مرحبا',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Arial',
                                    color: Color(0xff707070)),
                              ),
                              Text(
                                'محمد المبحوح',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Arial',
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(width: 80.w),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(
                          context, routapp.FindeLevel);
                    },
                    child: Container(
                        height: 40.w,
                        width: 40.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffD5D0D0),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                          color: Color(0xffEBE9F7),
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff003298),
                        )),
                  ),
                  SizedBox(width: 16.w),
                  InkWell(
                    onTap: ()  {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Color(0xffEBE9F7),
                          borderRadius: BorderRadius.circular(40.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffD5D0D0),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Color(0xff003298),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
