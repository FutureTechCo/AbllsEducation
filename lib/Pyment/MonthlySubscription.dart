import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MonthlySubscription extends StatelessWidget {
  const MonthlySubscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.symmetric(horizontal: 55.h,vertical: 58.h),
          child: Column(
            children: [
              Image.asset('assets/pyment.png'),
              SizedBox(height: 51.h,),
              Text(
               " شهر/ \$10",
                style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontFamily: 'Arial',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26.h,),
              Text(
               'تطبيق مخصص لتعليم الأطفال من قبل \nالمدربين او الوالدين وتقييم الطفل\n من خلال التطبيق ',
                style: TextStyle(
                  color: Color(0xff2A2A2A),
                  fontFamily: 'Arial',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 51.h,),
              ElevatedButton(onPressed: (){}, child: Text('متابعة',style: TextStyle(
                  color: Colors.white,
                fontFamily: 'Arial',
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff003298),
                minimumSize: Size(241.w,55.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r)
                )
              ),
              ),
              SizedBox(height: 30.h,),
              Text(
              ' .(7) أيام تجربة مجانية',
                style: TextStyle(
                  color: Color(0xff707070),
                  fontFamily: 'Arial',
                  fontSize: 20.sp,
                   fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
