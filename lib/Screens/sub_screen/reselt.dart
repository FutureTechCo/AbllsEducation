import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../Controller/AuthController/GetxLogin.dart';
import '../../Controller/SharedPreferences/SharedPreferences.dart';
import '../../Controller/get_rebort_controtter/get_rebort.dart';
import '../Wdjet/CstomAppBar_sup.dart';
import '../Wdjet/widjet_level.dart';

class reselt extends StatefulWidget {
  const reselt({Key? key}) : super(key: key);

  @override
  State<reselt> createState() => _reseltState();
}

class _reseltState extends State<reselt> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<get_rebort>(
      builder: (controller) =>  Scaffold(
          body: FutureBuilder<void>(
              future: controller.get_pasent(cus_id:SharedPreferencesApp().GetIdUser),
              builder: (context, snapshot) {
                // print("kjhkjh${controller.DataResult[1].name}");
                if (controller.DataResult.isNotEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CstomAppBar_sup(list: controller.DataResult),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'ما تم إنجازه من الأنشطة',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 600.h,
                        width: 370.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: ListView(
                            children: [
                              for (int j = 0;
                                  j < get_rebort.to.DataResult.length;
                                  j++)
                                if (get_rebort.to.DataResult[j] != null)
                                  widjet_level(
                                      percent: get_rebort.to.percent,
                                      titel: get_rebort.to.DataResult[j].name,
                                      level_id:
                                          "${get_rebort.to.DataResult[j].id}",
                                      cust_id: SharedPreferencesApp().GetIdUser)
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                } else if (get_rebort.to.DataResult.length == 0) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Column(
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        size: 24.sm,
                      ),
                      Text(
                        'No Data',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  );
                }
              })),
    );
  }
}
