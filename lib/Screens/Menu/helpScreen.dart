import 'package:abllseducation/Controller/HomeController/MenuController.dart';
import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class helpScreen extends StatelessWidget {
  const helpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CstomAppar(),
        Spacer(),
        Text(
          'يمكنك التواصل معنا من خلال',
          style: TextStyle(
              fontSize: 22.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Color(0xff336BA4)),
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Spacer(
              flex: 3,
            ),
            GestureDetector(
                onTap: () {
                  MenuController.to.launchUrls(MenuController.to.GoogleMail);
                },
                child: SvgPicture.asset('assets/gmail.svg')),
            Spacer(),
            GestureDetector(
                onTap: () {
                  MenuController.to.launchUrls(MenuController.to.WatsApp);
                },
                child: SvgPicture.asset('assets/wt.svg')),
            Spacer(),
            GestureDetector(
                onTap: () {
                  MenuController.to.launchUrls(MenuController.to.facebook);
                },
                child: SvgPicture.asset('assets/face.svg')),
            Spacer(
              flex: 3,
            ),
          ],
        ),
        Spacer(),
      ],
    ));
  }
}
