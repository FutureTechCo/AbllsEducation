import 'package:abllseducation/Controller/Api_Controller/data_user_Api.dart';
import 'package:abllseducation/Utils/HelperError.dart';
import 'package:flutter/material.dart';

import 'dart:io';

import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';
 import 'package:abllseducation/Utils/customTextFild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Controller/AuthController/GetxLogin.dart';
import '../../Controller/AuthController/userController.dart';
import '../../Controller/SharedPreferences/SharedPreferences.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> with Helper {
  XFile? _image;
  bool indecator = false;

  Future getImage() async {
    _image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (_image == null) return;
    final imageTemporary = File(_image!.path);
    setState(() {
      // this._image=imageTemporary;
      InfoGetController.to.image = _image!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.h),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    await getImage();
                  },
                  child: _image == null
                      ? Image.asset('assets/add.png')
                      : Container(
                          height: 104.h,
                          width: 100.w,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                          child: Image.file(
                            File(_image!.path),
                            fit: BoxFit.cover,
                            errorBuilder: ((context, error, stackTrace) {
                              return SvgPicture.asset('assets/icons/add.svg');
                            }),
                          ),
                        ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      controller: InfoGetController.to.name,
                      inputType: InfoGetController.to.textInput,
                      color: Color(0xff336BA4),
                      hintText: 'الأسم الكامل',
                      icon_data: Icons.person_outline),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                    width: 321.w,
                    height: 53.h,
                    child: CustomTextField(
                        controller: InfoGetController.to.country,
                        inputType: InfoGetController.to.textInput,
                        color: Color(0xff336BA4),
                        hintText: 'الدولة',
                        icon_data: Icons.location_on_outlined)),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 321.w,
                  height: 53.h,
                  child: CustomTextField(
                      color: Color(0xff336BA4),
                      controller: InfoGetController.to.phone,
                      inputType: InfoGetController.to.textInput,
                      hintText: 'رقم الجوال',
                      icon_data: Icons.phone_outlined),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: InfoGetController.to.ilp,
                            onChanged: (bool? val) {
                              setState(() {
                                InfoGetController.to.SetilpVal(val!);
                              });
                            },
                            side: BorderSide(color: Colors.blue, width: 2.w),
                          ),
                          Text(
                            'أخصائي',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: InfoGetController.to.spe,
                            onChanged: (bool? val) {
                              setState(() {
                                InfoGetController.to.SetspeVal(val!);
                              });
                            },
                            side: BorderSide(color: Colors.blue, width: 2.w),
                          ),
                          Text(
                            'ولي الأمر',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 85.h,
                ),
                indecator == false
                    ? ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            indecator = true;
                          });
                          if (InfoGetController.to.name.text.isNotEmpty &&
                              InfoGetController.to.phone.text.isNotEmpty &&
                              InfoGetController.to.country.text.isNotEmpty) {
                            if (!InfoGetController.to.spe &&
                                !InfoGetController.to.ilp) {
                              ShowSnackBar(
                                  context: context,
                                  Message:
                                      'عليك تحديد هل انت اخصائي ام ولي امر',
                                  Error: false);
                              setState(() {
                                indecator = false;
                              });
                            } else {
                              await userController()
                                  .add_user(user: userController().new_user())
                                  .then((value) async{
                                await userController.to.get_data_user(id: SharedPreferencesApp().GetIdUser);

                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              });
                              setState(() {
                                indecator = false;
                              });
                            }
                          } else {
                            ShowSnackBar(
                                context: context,
                                Message: 'احدى الحقول فارغة',
                                Error: false);
                            setState(() {
                              indecator = false;
                            });
                          }
                        },
                        child: Text(
                          'تأكيد',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Arial',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(173.w, 55.h),
                            primary: Color(0xff336BA4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90.r))),
                      )
                    : CircularProgressIndicator(
                        color: Color(0xff336BA4),
                      ),
              ],
            ),
          ),
        ));
  }
}
