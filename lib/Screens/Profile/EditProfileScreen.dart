import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/Screens/Wdjet/CustomeAppBarProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80-24.h,
          backgroundColor: Color(0xffF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24.r),
              bottomRight: Radius.circular(24.r),
            ),
          ),
          automaticallyImplyLeading: false,
          title: Text(
            'تعديل الملف الشخصي',
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Color(0xff003298),
            ),
          ),
           leading:
            IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: Icon(Icons.arrow_back, color: Color(0xff003298))),
         ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              Container(
                width: 103.w,height: 103.h,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(90.r),
                  image: DecorationImage(
                    image: NetworkImage('https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png')
                    ,fit: BoxFit.cover
                  )
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(width: double.infinity,height: 20.h,color: Colors.black12,child: Center(child: Text(
                        'Edit',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Arial',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),),),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
              ),
              Container(
                width: double.infinity.w,
                height: 45.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/emaild.png'),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'البريد الالكتروني',
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'moh@gmail.com',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.block,
                        color: Color(0xff003298),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 32,
                thickness: 2,
              ),
              Container(
                width: double.infinity.w,
                height: 45.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.person_outline),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'الأسم',
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'محمدالمبحوح',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,routapp.ChangeNameScreen);
                        },
                        child: Icon(
                          Icons.border_color_outlined,
                          color: Color(0xff003298),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 32,
                thickness: 2,
              ),
              Container(
                width: double.infinity.w,
                height: 45.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.phone_outlined),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'رقم الجوال',
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '0599123456',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,routapp.ChangePhoneScreen);
                        },
                        child: Icon(
                          Icons.border_color_outlined,
                          color: Color(0xff003298),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 32,
                thickness: 2,
              ),
              Container(
                width: double.infinity.w,
                height: 45.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.location_on_outlined),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'الدولة',
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, routapp.ChangeCanteryScreen);
                        },
                        child: Icon(
                          Icons.border_color_outlined,
                          color: Color(0xff003298),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 32,
                thickness: 2,
              ),
              Container(
                width: double.infinity.w,
                height: 45.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.lock_outline),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'كلمه السر',
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '*********\t',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,routapp.ChangePaswwordScreen);
                        },
                        child: Icon(
                          Icons.border_color_outlined,
                          color: Color(0xff003298),
                        ),
                      ),
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
      ),
    );
  }
}
