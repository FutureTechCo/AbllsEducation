import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Screens/Wdjet/CustomeAppBarProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Controller/AuthController/userController.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBarProfile(
          height: 274.h,
          leadingWidth: 80.w,
          title: Container(
            width: double.infinity.w,
            height: 280.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 21.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,routapp.EditProfileScreen);
                        },
                        child: Row(
                          children: [
                          Icon(
                                Icons.border_color_outlined,
                                color: Color(0xff003298),
                            ),
                            Text('تعديل',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff003298),
                                ))
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 26,
                      ),
                      Row(

                        children: [
                          Text(
                            'الملف الشخصي',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff003298),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_forward,
                                  color: Color(0xff003298))),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  userController.to.avatar=='https://talaadmin.online/'?
                  Image.network('https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png',width: 103.w,height: 103.h,)
                      :Image.network(userController.to.avatar,width: 103.w,height: 103.h,),
                  Text(
                    userController.to.name??'اهلان ايها الزائير',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Arial',
                      color: Color(0xff003298),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    userController.to.email??  'moh@gmail.com',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Arial',
                      color: Color(0xff003298),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Container(
              width: 174.w,
              height: 45.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'البريد الالكتروني',
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Image.asset('assets/emaild.png')
                      ],
                    ),
                    Text(
                      userController.to.email??  'moh@gmail.com',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 32,
              thickness: 2,
            ),
            Container(
              width: 174.w,
              height: 45.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'رقم الجوال',
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(Icons.phone_outlined)
                      ],
                    ),
                    Text(
                      userController.to.phone??  '000000000',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 32,
              thickness: 2,
            ),
            Container(
              width: 174.w,
              height: 45.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          userController.to.country??  'ليبيا',
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(Icons.location_on_outlined)
                      ],
                    ),
                    Text(
                      'فلسطين\t',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 32,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
