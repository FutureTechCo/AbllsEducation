import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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

        builder: (controller){
          return Scaffold(
              body: FutureBuilder<void>(
                  future: controller.get_pasent(
                      cus_id: 'asd32qw1e5qw46e'),

                  builder: (context, snapshot) {
                    print("kjhkjh${controller.level.name}");

                    if (controller.level != null) {
                      return  Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CstomAppBar_sup((){}),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('ما تم إنجازه من الأنشطة',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          for (int j = 0;    j < controller.DataResult.length;  j++)
                            widjet_level(percent:controller.percent ,titel:controller.DataResult[j].name
                                ,level_id:"${controller.DataResult[j].id}",cust_id:'asd32qw1e5qw46e')

                        ],
                      );
                    } else if (controller.DataResult.length == 0) {
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
                  })

          );
        });

  }
}

