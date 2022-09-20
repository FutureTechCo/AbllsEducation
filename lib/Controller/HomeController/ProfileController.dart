import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  static ProfileController get to => Get.find();
  TextInputType InputText = TextInputType.text;  
  TextEditingController EditName = TextEditingController();
  TextEditingController EditPhone = TextEditingController();
  TextEditingController EditCantry = TextEditingController();
  TextEditingController EditPassword = TextEditingController();
  TextEditingController EditNewPassword = TextEditingController();
  TextEditingController EditNewConfPassword = TextEditingController();
   
}