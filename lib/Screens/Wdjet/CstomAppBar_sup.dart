import 'dart:developer';

import 'package:abllseducation/Controller/get_rebort_controtter/get_rebort.dart';
import 'package:abllseducation/model/rebort.dart';
import 'package:abllseducation/pdf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/Api_Controller/rebort_Api.dart';

class CstomAppBar_sup extends StatelessWidget {
  late List<Level>? list;
  CstomAppBar_sup({this.list});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(
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
              padding: EdgeInsets.symmetric(
                  horizontal: 2 * 8.0.h, vertical: 2 * 8.h),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 320.w,
                      height: 80.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(onTap: (() {
                            Navigator.pop(context);
                          }),
                              child: Icon(Icons.arrow_back,
                                color: Color(0xff003298), size: 22,)),
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
                          InkWell(
                            onTap: () async {
                              await createPdf.createPDFfile(data: list!);
                            },
                            child: Container(
                              width: 70.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff003298),
                                      spreadRadius: 2,
                                    )
                                  ]
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 6.w,),
                                  Text('PDF', style: TextStyle(
                                      color: Color(0xff003298),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                  Spacer(),
                                  Icon(
                                    Icons.download, color: Color(0xff003298),),
                                  SizedBox(width: 6.w,),


                                ],
                              ),

                            ),
                          )
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
