import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:abllseducation/model/subscribe_model.dart';
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

  Future<List<subscribe_model>> GetAllSubscribeByUser()async{
    update(['profile']);
   return HomeApiController().getAllSubscribe();
  }
}