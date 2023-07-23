import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubscriptionHistory extends StatelessWidget {
  const SubscriptionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              'سجل الاشتراك',
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Arial',
                fontWeight: FontWeight.bold,
                color: Color(0xff003298),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_forward, color: Color(0xff003298))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.h),
        child: ListView(
          children: [
            Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتهت يوم',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'جارية',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'بايبال',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مقدار',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '10\$',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طلبت في',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/10/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتهت يوم',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/11/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'بايبال',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مقدار',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '10\$',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طلبت في',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/10/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتهت يوم',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/11/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'بايبال',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مقدار',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '10\$',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طلبت في',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/10/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتهت يوم',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/11/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'بايبال',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مقدار',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '10\$',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طلبت في',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/10/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتهت يوم',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/11/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'بايبال',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مقدار',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '10\$',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'طلبت في',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '25/10/2022',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
