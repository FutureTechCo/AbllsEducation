import 'dart:developer';

import 'package:abllseducation/Controller/HomeController/ProfileController.dart';
import 'package:abllseducation/model/subscribe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
      body: GetBuilder<ProfileController>(
          id: 'profile',
          builder: (controller) => FutureBuilder<List<subscribe_model>>(
                future: controller.GetAllSubscribeByUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.data!.isNotEmpty && snapshot.hasData) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 20.h),
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Container(
                              width: 328.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffEBEBEB),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                        isActive(snapshot, index)
                                            ? 'جارية'
                                            : DateTime.parse(snapshot
                                                    .data![index].createdAt!)
                                                .add(Duration(
                                                    days: 30, hours: 23))
                                                .toString()
                                                .substring(0, 10),
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Arial',
                                          fontWeight: FontWeight.bold,
                                          color: isActive(snapshot, index)
                                              ? Colors.green
                                              : Colors.red,
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
                                        '${snapshot.data![index].subsAmount}\$',
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
                                        snapshot.data![index].createdAt!
                                            .substring(0, 10),
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
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 16.h,
                              ),
                          itemCount: snapshot.data!.length),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              )),
      //),
    );
  }

  bool isActive(snapshot, index) {
    var dateTime = DateTime.parse(snapshot.data![index].createdAt!);
    return DateTime.now().second - dateTime.second > 0;
  }
}
