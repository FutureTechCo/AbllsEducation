import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeGetxVar extends GetxController {
  HomeGetxVar get to => Get.find();
  final List<String> Url = [
    'اكتب منشور',
    'الفيديوهات',
    'تقييم التطبيق',
    'مشاركه'
  ];

  final List<String> UrlImage = [
    'assets/ic_buttom/po.svg',
    'assets/ic_buttom/vid.svg',
    'assets/ic_buttom/tak.svg',
    'assets/ic_buttom/shear.svg'
  ];
  /**
   *Color1 رمادي خفيف
   */
  final Color color1 = Color(0xffC4C4C4);
  /**
   *Color2 رمادي اتقل
   */
  final Color color2 = Color(0xff707070);
  /**
   *Color3 اسود
   */
  final Color color3 = Color(0xff000000);
  /**
   *Color4 ابيض
   */
  final Color color4 = Color(0xffFFFFFF);
  final Color color5 = Color(0xff6F6F6F);
  /**
   *Color6 ازرق غامق
   */
  final Color color6 = Color(0xff49269A);
  /**
   *Color7احمر
   */
  final Color color7 = Colors.red;

  final String PathImageBody = 'assets/icon_locing2/imglogin.png';
  final String font_Family = 'Roboto';
  final String LogoImage = 'assets/icons/Logo.png';

  int index = 0;
  bool Hl = false;
  void setHl(bool o){
    Hl = o ;
    update();
  }


  void UpdateIndex(int i) {
    index = i;
    update();
  }

  TextEditingController PostController = TextEditingController();
  TextInputType DataPost = TextInputType.text;
  //البحث
  TextEditingController SearchController = TextEditingController();
  TextInputType DataSearch = TextInputType.text;

  final String About1 =
      'وقفة تأملية في قول حبيبنا محمد صلى الله عليه وسلم(لا يؤمن أحدكم حتى يحب لأخيه ما يحب لنفسه) متفق عليه';
  final String About2 =
      'نعتمد في عملنا على التدخل المبكر من سن السنة وذلك من خلال التقييم المبدئي ووضع خطط التربية الخاصة ثم التقييم والمتابعة مع الاهل';

  bool Like = false;
  bool Commuit = false;
  void SetLinke(bool b) {
    Like = b;
    update();
  }

  void SetCommuit(bool b) {
    Commuit = b;
    update();
  }
}
