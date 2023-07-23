import 'package:abllseducation/Controller/HomeController/MenuController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Controller/AuthController/userController.dart';

import '../../Controller/AuthController/GetxLogin.dart';
import '../sub_screen/block_reselt.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity.w,
          height: 172.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/packdrower.png',
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:   EdgeInsets.symmetric(horizontal: 8.0*2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: ()=> Scaffold.of(context).closeEndDrawer(),
                      child: CircleAvatar(child: Icon(Icons.close),backgroundColor: Colors.white,)),
                       Container(
                         width: 64.w,
                         height: 64.h,
                         clipBehavior: Clip.antiAlias,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(90.r)),
                         child: userController.to.avatar != 'https://talaadmin.online/'
                             ? Image.network(
                           userController.to.avatar,
                           fit: BoxFit.cover,
                         )
                             : Image.asset('assets/download.png'),
                       ),
                ],
              ),
              SizedBox(height: 9.h,),
              Text(userController.to.name??'اهلان ايها الزائير',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 2.h,),
                Text(userController.to.email??'',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),),
            ],),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        InkWell(
          onTap: () {
             Navigator.pushNamed(context,routapp.Profile_Screen);
          },
          child: Container(
            height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الملف الشخصي',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Icon(Icons.badge_outlined),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            menuController.to.launchUrls(menuController.to.url);
          },
          child: Container(
             height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'التقييم',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset('assets/qu.png'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routapp.results);
           


          },
          child: Container(
            height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'التقرير',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset('assets/list.png'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context,routapp.AboutAppScreen);
          },
          child: Container(
            height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'حول التطبيق',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset('assets/info.png'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context,routapp.helpScreen);
          },
          child: Container(
            height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الدعم الفني',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                 Icon(Icons.help_center_outlined,size: 28.sm,)
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routapp.SubscriptionHistory);
          },
          child: Container(
            height: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سجل الاشتراك',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset('assets/list.png'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        InkWell(
          onTap: () {
            LoginGetx().to.logout(context);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Image.asset('assets/logout.png'),
              ],
            ),
          ),
        ),

      ],
    ));
    // UserAccountsDrawerHeader(
    //   decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage(
    //             'assets/packdrower.png',
    //           ),
    //           fit: BoxFit.cover)),
    //   currentAccountPicture: Image.network(
    //       'https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png'),
    //   accountName: Text(
    //     'محمد المبحوح',
    //     style: TextStyle(
    //         fontFamily: 'Arial',
    //         fontSize: 16.sp,
    //         fontWeight: FontWeight.w400),
    //   ),
    //   accountEmail: Text(
    //     'moh@gmail.com',
    //     style: TextStyle(
    //         fontFamily: 'Arial',
    //         fontSize: 16.sp,
    //         fontWeight: FontWeight.w400),
    //   ),
    //   otherAccountsPictures: [
    //     InkWell(
    //         onTap: () => Scaffold.of(context).closeDrawer(),
    //         child: CircleAvatar(
    //           child: Icon(Icons.close),
    //           backgroundColor: Colors.white,
    //         ))
    //   ],
    // ),
  }
}
