import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar CustomeAppBarProfile({required double height, Widget? title,leading,List<Widget>? actions,double? leadingWidth}){
  return AppBar(centerTitle: true,
     excludeHeaderSemantics: true,
     automaticallyImplyLeading: false,
    backgroundColor: Color(0xffF6F6F6),
    leadingWidth: leadingWidth,
    toolbarHeight: height,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24.r),
        bottomRight: Radius.circular(24.r),
      ),
    ),
    title: title,
    leading: leading,
    actions: actions,
  );
}