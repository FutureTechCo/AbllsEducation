import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoGetController extends GetxController{
    static InfoGetController get to => Get.find();
    //TextFieldController Information
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController country = TextEditingController();
    TextEditingController email = TextEditingController();
    //Option
    bool ilp = false;
    bool spe = false;
    void SetilpVal(bool i){
      ilp = i;
      update();
    }
    void SetspeVal(bool n){
      spe = n;
      update();
    }
    //TextInputType
    TextInputType textInput = TextInputType.text;
    TextInputType emailInput = TextInputType.emailAddress;


}