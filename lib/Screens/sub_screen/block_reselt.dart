import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

import '../../Controller/get_rebort_controtter/get_rebort.dart';
import '../Wdjet/Cstom AppBar_block_reselt.dart';

class block_reselt extends StatelessWidget {

  String cus_id='asd32qw1e5qw46e';

  String level_id='1';

  @override
  Widget build(BuildContext context) {
    print('%%%%%%%%');
    return GetBuilder<get_rebort>(
        id: 'GetLevels',
        builder: (controller){
          print('@@@@@@@@@@@');
          return Scaffold(
            key: controller.key,
            body: FutureBuilder<void>(
                future: controller.getLevel(
                    cus_id: cus_id, level_id: level_id),

                builder: (context, snapshot) {
                  print("kjhkjh${controller.level.name}");

                  if (controller.level != null) {
                    return SafeArea(
                        child: Column(
                      children: [
                        cstomAppBar_block_reselt(12, 434),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                            height: 573.99.h,
                            width: 324.w,
                            child: Padding(
                              padding: EdgeInsets.all(8.0.h),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Container(
                                    height: 41.98.h,
                                    width: 321.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.r),
                                          topRight: Radius.circular(10.r),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff7899DC),
                                            spreadRadius: 2,
                                          )
                                        ]),
                                    child: Center(
                                        child: Text(
                                      '${controller.level.name}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,
                                          fontFamily: 'Arial',
                                          color: Color(0xff003298)),
                                    )),
                                  ),
                                  for (int j = 0;    j < controller.level.categories!.length;  j++)
                                    Row(
                                      children: [
                                        for (int k = 0;
                                            k <
                                                controller.level!.categories![j]
                                                    .videos!.length;
                                            k++)
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                var Oject = controller.level!
                                                    .categories![j].videos![k];
                                                controller!.SetVideos(Oject);
                                                controller.SetTapTitle(
                                                    controller.level
                                                        .categories![j].name);
                                                Navigator.pushNamed(context,
                                                    routapp.vadeo_screen);
                                              },
                                              child: Container(
                                                height: 44,
                                                width: 57,
                                                decoration: BoxDecoration(
                                                    color: controller.level!.categories![j].videos![k].isWatched! ? Color(0xff00FF00):Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xff7899DC),
                                                        spreadRadius: 2,
                                                      )
                                                    ]),
                                                child: Center(
                                                  child: Text(
                                                    controller
                                                            .level
                                                            .categories![j]
                                                            .name! +
                                                        ' - ${k + 1}',
                                                    style: TextStyle(
                                                      color: Color(0xffA6A6A6),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        Container(
                                          height: 44,
                                          width: 57,
                                          decoration: BoxDecoration(
                                              color: Color(0xff3A7FC4),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xff7899DC),
                                                  spreadRadius: 2,
                                                )
                                              ]),
                                          child: Center(
                                              child: Text(
                                            controller.level!.categories![j].name!,
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                        )
                                      ],
                                    )
                                ],
                              ),
                            )),
                      ],
                    ));
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
                }));});
  }
}
