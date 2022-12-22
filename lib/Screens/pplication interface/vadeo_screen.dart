import 'dart:developer';

import 'package:abllseducation/Controller/HomeController/HomeController.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:pod_player/pod_player.dart';

class vadeo_screen extends StatefulWidget {
  @override
  State<vadeo_screen> createState() => _vadeo_screenState();
}

class _vadeo_screenState extends State<vadeo_screen> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
        HomeController.to.object.url,
      ),
    )..initialise();
    log('message => ${controller.currentVideoPosition}');
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        backgroundColor: Color(0xffF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                HomeController.to.tapTitle,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_forward, color: Color(0xff003298))),
              SizedBox(
                width: 3,
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  HomeController.to.object.title,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  ':',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  HomeController.to.tapTitle,style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(
                  width: 5.w,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 156.h,
              width: 328.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
               ),
               child: PodVideoPlayer(

                frameAspectRatio:328/150,
                alwaysShowProgressBar: true,
                  videoThumbnail:DecorationImage(
                    image: NetworkImage(HomeController.to.object.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  controller: controller),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'الهدف',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              HomeController.to.object.target,
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'النتيجة',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              HomeController.to.object.result,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'الجواب',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              HomeController.to.object.answer,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
