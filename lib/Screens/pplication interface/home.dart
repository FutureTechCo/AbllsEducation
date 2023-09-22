import 'dart:developer';

import 'package:abllseducation/Controller/HomeController/HomeController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Controller/SharedPreferences/SharedPreferences.dart';
import '../Wdjet/CstomAppar.dart';
import '../Menu/DrawerApp.dart';
class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: HomeController.to.key,
      endDrawer: DrawerApp(),
      body:FutureBuilder<void>(
        future: HomeController.to.getDataLevel(),
        builder: (context, snapshot) {
          if(HomeController.to.DataResult.isNotEmpty){
             return Obx(
              () =>  SafeArea(
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                         CstomAppar(),
                         SizedBox(
                           height: 10.h,
                         ),
                         Row(
                           children: [
                             SizedBox(
                               width: 20.w,
                             ),
                             InkWell(
                               onTap: () {
                                 log('message=>${SharedPreferencesApp().GetIdUser}');
                                 HomeController.to.pageController.previousPage(
                                     duration: Duration(seconds: 1), curve: Curves.ease);
                               },
                               child: Container(
                                 height: 34.h,
                                 width: 34.w,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.blueAccent,
                                 ),
                                 child: Icon(
                                   Icons.navigate_before,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             Spacer(),
                             Container(
                               child: Text(
                                 '${ HomeController.to.selectedPage.value+1} / ${HomeController.to.DataResult.length}',
                                 style:
                                 TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                               ),
                             ),
                             Spacer(),
                             InkWell(
                               onTap: () {
                                 HomeController.to.pageController.nextPage(
                                     duration: Duration(seconds: 1), curve: Curves.easeIn);
                               },
                               child: Container(
                                 height: 34.h,
                                 width: 34.w,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.blueAccent,
                                 ),
                                 child: Icon(
                                   Icons.navigate_next,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: 20.w,
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 15.h,
                         ),
                         SizedBox(
                           height: 573.99.h,
                           width: 324.w,
                           child: PageView(
                             clipBehavior: Clip.antiAlias,
                             controller: HomeController.to.pageController,
                             onPageChanged: (int selectedPage) {
                               // setState(() {
                               //   i = selectedPage;
                               // });
                               // print('Selected Page: $i');
                               HomeController.to.SetIndexPage(selectedPage);
                               // print(controller.selectedPage);
                             },
                             children: <Widget>[
                               for(int i =0 ; i < HomeController.to.DataResult.length ; i++)
                                 Padding(
                                 padding: EdgeInsets.all(8.0.h),
                                 child: SizedBox(
                                   height: 573.99.h,
                                   width: 324.w,
                                   child: SingleChildScrollView(
                                     child: Column(
                                       children: [
                                         SizedBox(
                                           height: 3.h,
                                         ),
                                         Padding(
                                           padding:   EdgeInsets.symmetric(horizontal: 8.h),
                                           child: Container(
                                             height: 41.98.h,
                                             width: 321.w,
                                             decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius: BorderRadius.only(
                                                   topLeft: Radius.circular(10.r),
                                                   topRight: Radius.circular(10.r),
                                                 ),
                                                 boxShadow: [
                                                   BoxShadow(
                                                     color: Color(0xff7899DC),
                                                     spreadRadius: 2,
                                                   )
                                                 ]),
                                             child: Center(
                                                 child: Text(
                                                   '${HomeController.to.DataResult[i].name}',
                                                   style: TextStyle(
                                                       fontWeight: FontWeight.bold,
                                                       fontSize: 20.sp,
                                                       fontFamily: 'Arial',
                                                       color: Color(0xff003298)),
                                                 )),
                                           ),
                                         ),
                                         for(int j = 0 ; j < HomeController.to.DataResult[i].categories.length;j++)
                                           // if(HomeController.to.DataResult[i].categories[j].videos.isNotEmpty)
                                             Padding(
                                               padding:   EdgeInsets.symmetric(horizontal: 8.h),
                                               child: Row(
                                                 children: [
                                                   if(HomeController.to.DataResult[i].categories[j].videos.isNotEmpty)for (int k = 0; k <HomeController.to.DataResult[i].categories[j].videos.length; k++)Expanded(
                                                       child: InkWell(
                                                         onTap: () async {
                                                           var Oject = HomeController.to.DataResult[i].categories[j].videos[k];
                                                           HomeController.to.SetVideos(Oject);
                                                           HomeController.to.SetTapTitle(HomeController.to.DataResult[i].categories[j].letter);
                                                            log('messageVideos $Oject');
                                                         dynamic r =  await Navigator.pushNamed(
                                                               context, routapp.vadeo_screen);
                                                          if(r[0] == 'true'){
                                                            setState(() {
                                                            });
                                                          }
                                                         },
                                                         child: Container(
                                                           height: 44,
                                                           width: 57,
                                                           decoration: BoxDecoration(
                                                               color: HomeController.to.DataResult[i].categories![j].videos[k].is_watched? Color(0xff00FF00):Colors.white,
                                                               boxShadow: [
                                                                 BoxShadow(
                                                                   color: Color(0xff7899DC),
                                                                   spreadRadius: 2,
                                                                 )
                                                               ]),
                                                           child: Center(
                                                             child: Text(
                                                               HomeController.to.DataResult[i].categories[j].letter+' - ${k+1}',
                                                               style: TextStyle(
                                                                 color: Color(0xffA6A6A6),
                                                                 fontSize: 16,
                                                               ),
                                                             ),
                                                           ),
                                                         ),
                                                       ),
                                                     )else Expanded(
                                                       child: Container(
                                                       height: 44,
                                                       decoration: BoxDecoration(
                                                           color: Colors.white,
                                                           boxShadow: [
                                                             BoxShadow(
                                                               color: Color(0xff7899DC),
                                                               spreadRadius: 2,
                                                             )
                                                           ]),
                                                       child: Center(child: Text('لايوجد فيديوهات')),),
                                                     ),
                                                   Container(
                                                     height: 44,
                                                     width: 57,
                                                     decoration: BoxDecoration(
                                                         color: Color(0xff3A7FC4),
                                                         boxShadow: [
                                                           BoxShadow(
                                                             color: Color(0xff7899DC),
                                                             spreadRadius: 2,
                                                           )
                                                         ]),
                                                     child: Center(
                                                         child: Text(
                                                           HomeController.to.DataResult[i].categories[j].letter,
                                                           style: TextStyle(
                                                             fontSize: 25,
                                                             color: Colors.white,
                                                             fontWeight: FontWeight.bold,
                                                           ),
                                                         )),
                                                   )
                                                 ],
                                               ),
                                             )
                                       ],
                                     ),
                                   ),
                                 )
                                   )
                             ],
                           ),
                         ),
                       ],
                     ),
                   )
                )
             );
          }else if(HomeController.to.DataResult.length == 0){
            return Center(child: CircularProgressIndicator(),);
          }else{
            return Column(children: [
              Icon(Icons.warning_rounded,size: 24.sm,),
              Text('No Data',style: TextStyle(fontFamily: 'Arial',fontSize: 24.sp,fontWeight: FontWeight.bold),)
            ],);
          }
        },
      ),
    );
  }
}

