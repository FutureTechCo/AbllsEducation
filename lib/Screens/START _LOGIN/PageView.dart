import 'dart:developer';

import 'package:abllseducation/Utils/StylePageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
 late PageController pageController;
 int _pageNumber = 0;
 @override
  void initState() {
    pageController = PageController();// TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();// TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _pageNumber!=0?IconButton(onPressed: (){
            pageController.previousPage(duration:const Duration(microseconds:  5), curve: Curves.easeInOut);
          }, icon: Icon(Icons.arrow_back,color: Colors.blue,)):SizedBox(height:46.h,),
          Container(
            height: 600.h,
             width: double.infinity,
            child: Center(
              child: PageView(
                controller: pageController,
                onPageChanged: (int i){
                  setState((){
                    _pageNumber = i;
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                    child: Container(
                      child: Column(
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
                          Text('نبذه تعريفيه 1', style: StyleTile()),
                          SizedBox(
                            height: 26.h,
                          ),
                          Text(
                              'يدعم برنامج الإيبلز أنشطه العلاج السلوكي ويساعدك في تحسين مهارات اللغة لدى طفلك',
                              textAlign: TextAlign.center,
                              style: StyleSupTile()),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                    child: Container(
                      child: Column(
                        children: [
                          // Align(alignment: Alignment.topLeft,child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Color(0xff003298),))),
                          //  SizedBox(
                          //    height: 26.h,
                          //  ),
                          Container(
                            child: Image.asset(
                              'assets/page2.png',
                              width: 204.w,
                              height: 246.h,
                            ),
                          ),
                          SizedBox(
                            height: 56.h,
                          ),
                          Text('نبذة تعريفيه 2', style: StyleTile()),
                          SizedBox(
                            height: 26.h,
                          ),
                          Text(
                            'يتيح لك التطبيق فرصه تقيم التدريب ومتابعه الخطه بذاتك كأن معك متخصص في بيتك',
                            style: StyleSupTile(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                    child: Container(
                      child: Column(
                        children: [
                          // Align(alignment: Alignment.topLeft,child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Color(0xff003298),))),
                          // SizedBox(
                          //   height: 26.h,
                          // ),
                          Container(
                            child: Image.asset(
                              'assets/page3.png',
                              width: 204.w,
                              height: 246.h,
                            ),
                          ),
                          SizedBox(
                            height: 56.h,
                          ),
                          Text('نبذة تعريفيه 3', style: StyleTile()),
                          SizedBox(
                            height: 26.h,
                          ),
                          Text(
                            'لن تحتاج للاستفسار كثيراً كيفيه وطريقه تنفيذ النشاط ستجد كل نشاط له فيديو يشرح طريقه تطبيقه داخل مجاله بإمكاك الإطلاع على أي فيديو وإعادة مشاهده متى إحتجت ذلك',
                            style: StyleSupTile(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 189.w,
              height: 50.h,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),curve: Curves.easeOutQuint,
                      width: _pageNumber!=0?10.w:27.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=0?Colors.white:Colors.blue,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color:Colors.blue
                          )),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                      AnimatedContainer(duration: Duration(milliseconds: 500),curve: Curves.easeOutQuint,
                      width: _pageNumber!=1?10.w:27.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=1?Colors.white:Colors.blue,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color: Colors.blue
                          )
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    AnimatedContainer(duration: Duration(milliseconds: 500),curve: Curves.easeOutQuint,
                      width: _pageNumber!=2?10.w:27.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: _pageNumber!=2?Colors.white:Colors.blue,
                          borderRadius: BorderRadius.circular(90.r),
                          border: Border.all(
                              color: Colors.blue
                          )
                      ),
                    )
                  ],),
                  FloatingActionButton(
                      onPressed: (){
                        pageController.nextPage(duration:const Duration(microseconds:  5), curve: Curves.easeInOut);
                      },
                      child:Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
