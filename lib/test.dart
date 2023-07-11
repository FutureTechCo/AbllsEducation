import 'dart:developer';

import 'package:abllseducation/Controller/SharedPreferences/SharedPreferences.dart';
import 'package:abllseducation/model/rebort.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatelessWidget {
  late List<Level>? list;

  Test({super.key, this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('تقرير حاله'),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text('..........................'),
                            Text('العمر'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('.........................'),
                            Text('تاريخ بدايه التدريب'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text('..........................'),
                            Text('الاسم'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('..................'),
                            Text('اسم المدرب'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(': نتائج التقرير'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              ...list!.map((e) {
                log('message -> ${SharedPreferencesApp().GetIdUser}');
                return Container(
                  child: Column(
                    children: [
                      Text('(${e.name}) ماتم أنجازه من مرحلة '),
                      SizedBox(
                        height: 12.h,
                      ),
                      for (int i = 0; i < e.categories!.length; i++)
                        for (int y = 0;
                            y < e.categories![i].videos!.length;
                            y++)
                          if (e.categories![i].videos![y].is_watched == true)
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 30.h,
                                    child: Center(
                                        child: Text(
                                            '${e.categories![i].videos![y].touchstone}')),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        '${e.categories![i].letter} - ${y + 1}'),
                                  )),
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('..................'),
                  Text('تاريخ التقرير'),
                  Spacer(),
                  Text('.........................'),
                  Text('اسم المدرب'),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                          'كتب هذا التقرير من تطبيق الايبلز \nاعداد د.نور الصقر القادري'
                       ,textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('dr.nouralsager@gmail.com'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
