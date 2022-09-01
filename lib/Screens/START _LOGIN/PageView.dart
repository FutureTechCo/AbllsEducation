import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset(
            'assets/page1.png',
            width: 204.w,
            height: 246.h,
          ),
        ),
        SizedBox(
          height: 56.h,
        ),
        Text('موضوع'),
        SizedBox(
          height: 56.h,
        ),
        Text('تطبيق مخصص لتعليم الأطفال من قبل'
            'المدربين او الوالدين وتقييم الطفل'
            'من خلال التطبيق '),
      ],
    ));
  }
}
