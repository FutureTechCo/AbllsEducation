import 'dart:developer';

import 'package:abllseducation/Controller/HomeController/HomeController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Utils/customTextFild.dart';
import '../../model/levels_model_response.dart';

class FindeLevel extends StatefulWidget {
  const FindeLevel({Key? key}) : super(key: key);

  @override
  State<FindeLevel> createState() => _FindeLevelState();
}

class _FindeLevelState extends State<FindeLevel> {
  late TextEditingController search;

  @override
  void initState() {
    search = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    search.dispose();
    HomeController.to.DataResultCategories = [];
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80 - 24.h,
            backgroundColor: Color(0xffF6F6F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24.r),
                bottomRight: Radius.circular(24.r),
              ),
            ),
            automaticallyImplyLeading: false,
            title: Container(
              width: 295.w,
              height: 40.h,
              child: CustomTextField(
                  controller: search,
                  inputType: TextInputType.text,
                  color: Color(0xff336BA4),
                  hintText: '',
                  onSubmit: (value) {
                    controller.getDataCategories(search: search.text);
                    log(search.text);
                  },
                  textInputActions: TextInputAction.search,
                  iconButton: IconButton(
                      icon: Icon(Icons.search_rounded),
                      onPressed: () {
                        HomeController.to
                            .getDataCategories(search: search.text);
                      }),
                  icon_data: null),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Color(0xff003298))),
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0.h),
            child: ListView(children: [
              for (int i = 0; i < controller.DataResultCategories.length; i++)
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 57,
                      decoration:
                          BoxDecoration(color: Color(0xff3A7FC4), boxShadow: [
                        BoxShadow(
                          color: Color(0xff7899DC),
                          spreadRadius: 2,
                        )
                      ]),
                      child: Center(
                          child: Text(
                        controller.DataResultCategories[i].letter,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    if (!controller.DataResultCategories[i].videos.isEmpty)
                      for (int j = 0;
                          j < controller.DataResultCategories[i].videos.length;
                          j++)
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              var Oject =
                                  controller.DataResultCategories[i].videos[j];
                              controller.SetVideos(Oject);
                              controller.SetTapTitle(
                                  controller.DataResultCategories[i].name);
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
                                  controller.DataResultCategories[i].videos[j]
                                      .mission_number,
                                  style: TextStyle(
                                    color: Color(0xffA6A6A6),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                    else
                      Expanded(
                        child: Container(
                          height: 44,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Color(0xff7899DC),
                              spreadRadius: 2,
                            )
                          ]),
                          child: Center(child: Text('لايوجد فيديوهات')),
                        ),
                      )
                  ],
                )
            ]),
          ),
        ),
      ),
    );
  }
}
