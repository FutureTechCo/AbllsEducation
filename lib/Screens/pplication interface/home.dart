import 'dart:developer';

import 'package:abllseducation/Controller/HomeController/HomeController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Wdjet/CstomAppar.dart';
import '../Menu/DrawerApp.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'GetDataLevels',
      builder: (controller) => Scaffold(
        key: controller.key,
        endDrawer: DrawerApp(),
        body:FutureBuilder<void>(
          future: controller.getDataLevel(),
          builder: (context, snapshot) {
            if(controller.DataResult.isNotEmpty){
              return SafeArea(
                  child: Column(
                    children: [
                      CstomAppar(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          InkWell(
                            onTap: () {
                              controller.pageController.previousPage(
                                  duration: Duration(seconds: 1), curve: Curves.ease);
                            },
                            child: Container(
                              height: 34.h,
                              width: 34.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                              ),
                              child: Icon(
                                Icons.navigate_before,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text(
                              '${controller.selectedPage+1} / ${controller.DataResult.length}',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              controller.pageController.nextPage(
                                  duration: Duration(seconds: 1), curve: Curves.easeIn);
                            },
                            child: Container(
                              height: 34.h,
                              width: 34.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                              ),
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 573.99.h,
                        width: 324.w,
                        child: PageView(
                          clipBehavior: Clip.antiAlias,
                          controller: controller.pageController,
                          onPageChanged: (int selectedPage) {
                                print('Selected Page: $selectedPage');
                                controller.SetIndexPage(selectedPage);
                                print(controller.selectedPage);
                           },
                          children: <Widget>[
                            for(int i =0 ; i < controller.DataResult.length ; i++) Padding(
                              padding: EdgeInsets.all(8.0.h),
                              child: SizedBox(
                                height: 573.99.h,
                                width: 324.w,
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
                                            '${controller.DataResult[i].name}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.sp,
                                                fontFamily: 'Arial',
                                                color: Color(0xff003298)),
                                          )),
                                    ),
                                    for(int j = 0 ; j < controller.DataResult[i].categories.length;j++)Row(
                                      children: [
                                        for (int k = 0; k < controller.DataResult[i].categories[j].videos.length; k++)
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                var Oject = controller.DataResult[i].categories[j].videos[k];
                                                controller.SetVideos(Oject);
                                                controller.SetTapTitle(controller.DataResult[i].categories[j].name);
                                                log('messageVideos $Oject');
                                                Navigator.pushNamed(
                                                    context, routapp.vadeo_screen);
                                              },
                                              child: Container(
                                                height: 44,
                                                width: 57,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(0xff7899DC),
                                                        spreadRadius: 2,
                                                      )
                                                    ]),
                                                child: Center(
                                                  child: Text(
                                                    controller.DataResult![i].categories[j].name+' - ${k+1}',
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
                                                controller.DataResult[i].categories[j].name,
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            }else if(controller.DataResult.length == 0){
              return Center(child: CircularProgressIndicator(),);
            }else{
              return Column(children: [
                Icon(Icons.warning_rounded,size: 24.sm,),
                Text('No Data',style: TextStyle(fontFamily: 'Arial',fontSize: 24.sp,fontWeight: FontWeight.bold),)
              ],);
            }
          },
        ),
      ),
    );
  }
}

