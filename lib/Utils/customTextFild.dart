import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? inputType;
  String? font_Family;
  Color? color;
  String? hintText;
  IconData? icon_data;
  IconButton? iconButton;
  bool obscureText;
  bool? enableds;
  dynamic? vars;

  CustomTextField(
      {this.controller,
      this.inputType,
      this.font_Family,
      this.color,
      required this.hintText,
      this.icon_data,
      this.iconButton,
      this.obscureText = false,
      this.enableds = true,
      this.vars});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      textAlign: TextAlign.right,
      obscureText: obscureText,
      onTap: vars,
      enabled: enableds,
      minLines: 1,
      maxLines: 1,
      textAlignVertical: TextAlignVertical.bottom,
      style: TextStyle(fontFamily: font_Family, fontSize: 14.sp, color: color),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1,
                color: color!,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1,
                color: color!,
              )),
          hintText: hintText,
          helperStyle:
              TextStyle(fontFamily: font_Family, fontSize: 20.sp, color: color),
          suffixIcon: Icon(icon_data, color: color, size: 24.sm),
          prefixIcon: iconButton,
          floatingLabelStyle: TextStyle(color: color)),
    );
  }
}
