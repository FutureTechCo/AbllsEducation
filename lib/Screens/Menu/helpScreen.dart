import 'package:abllseducation/Controller/HomeController/MenuController.dart';
import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class helpScreen extends StatelessWidget {
  const helpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
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
              title: Text(
                'الدعم الفني',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Color(0xff003298))),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                          menuController.to
                              .launchUrls(menuController.to.GoogleMail);
                        },
                        child: SvgPicture.asset('assets/gmail.svg')),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          menuController.to
                              .launchUrls(menuController.to.WatsApp);
                        },
                        child: SvgPicture.asset('assets/wt.svg')),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          menuController.to
                              .launchUrls(menuController.to.facebook);
                        },
                        child: SvgPicture.asset('assets/face.svg')),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: [
                      Text('فكرة وإعداد وتنفيذ',
                        style: GoogleFonts.cairo(fontSize: 12.sp, color: Colors.grey,fontWeight: FontWeight.bold) ,),
                      Text('د.نور الصقر القادري',
                          style: GoogleFonts.cairo(
                              fontSize: 16.sp, fontWeight: FontWeight.bold)),
                      Text('00218925312348',
                          style:
                          GoogleFonts.cairo(fontSize: 16.sp, fontWeight: FontWeight.bold))
                      ,SizedBox(height: 10.h,)
                    ],),
                  ],
                )
              ],
            )));
  }
}
