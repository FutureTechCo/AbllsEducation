import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:abllseducation/Utils/StylePageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

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
              'حول التطبيق',
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
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 2 * 8.0.h, vertical: 11.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'نرحب بالوالدين والمعالجين والمنسقين بقسم بروتوكول جديد على منصة مجموعة أدوات ',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      'ABA',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'كيف أقوم بتقييم على المنصة؟',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: 'Arial',
                        color: Color(0xff49269A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'يتم إدخال المعايير التي تم الحصول عليها بعد التقييم يدويًا في المنصة',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '  مئة وتسعون مهارة مصحوبة بالفيديو للحفاظ على دقة الاختبار  ',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'يمكن للمقيم اختيار المهارات التي تظهر في سن معينة (على سبيل المثال ، سنتان ، 3 ، 4 ، 5 ، 6+ سنوات). علاوة على ذلك ، يُعرض عليه خياران لمراقبة / تنظيم التقييم: لقد انتهيت من تقييم المهارة وأريد التحقق مرة أخرى.',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'ما أنواع التقارير التي يمكنك إصدارها من النظام الأساسي؟',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: 'Arial',
                        color: Color(0xff49269A),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      ' استنادًا إلى البيانات - تقرير التقييم المعياريه  -',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      ' مخطط المهارات  -',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      ' تقرير العنصر  -',
                      style: SetyleTextApoutApp(),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
