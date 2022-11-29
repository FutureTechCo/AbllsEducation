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
  TextInputAction? textInputActions;
  bool? enableds;
  dynamic vars;
  dynamic onSubmit;

  CustomTextField(
      {this.controller,
      this.inputType,
       this.color,
      required this.hintText,
      this.icon_data,
      this.iconButton,
      this.textInputActions,
      this.obscureText = false,
      this.enableds = true,
      this.vars,
      this.onSubmit,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      textAlign: TextAlign.right,
      obscureText: obscureText,
      onTap: vars,
      enabled: enableds,
      textInputAction:textInputActions,
      onSubmitted: onSubmit,
      minLines: 1,
      maxLines: 1,
      textAlignVertical: TextAlignVertical.bottom,
      style: TextStyle(fontFamily: 'Arial', fontSize: 20.sp, color: Colors.black,fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90.r),
              borderSide: BorderSide(
                width: 1,
                color: color!,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90.r),
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
