import 'package:abllseducation/Controller/HomeController/MenuController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                   Image.network('https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png',width: 64.w,height: 64.h,),
                ],
              ),
              SizedBox(height: 9.h,),
              Text('محمد المبحوح',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 2.h,),
                Text('moh@gmail.com',
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
            MenuController.to.launchUrls(MenuController.to.url);
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
          onTap: () {},
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
