import 'dart:developer';

import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as myGet;

import '../../model/rebort.dart';
import '../Api_Controller/rebort_Api.dart';
class get_rebort extends myGet.GetxController{
  static  get_rebort get  to => myGet.Get.find();
  final GlobalKey<ScaffoldState> key = GlobalKey();
  List<Level> DataResult = [];
  Level level=Level();
      Videos object = Videos();
  String tapTitle = '';
  @override
  void onInit()async{
    // await getDataCategories(Search: search.text);
    super.onInit();
  }
  @override
  void onClose(){
    super.onClose();
  }
  Future<void> getrebort({required cus_id})async{
    await reboet_Api().getrebort(cus_id: cus_id).then((value) {
      DataResult = <Level>[];
      DataResult = value;
    });
    update(['GetLevels']);
  }

  Future<void> getLevel({required cus_id,required level_id})async{
    await reboet_Api().getLevel(cus_id: cus_id,level_id:level_id).then( (value){
      value.toString();
      level =value!;
      update();

    });
    print(level.name);
    update();
  }
 void SetVideos(value){

    object = value;

    update(['GetLevels']);
 }
  void SetTapTitle(value){
    tapTitle = value;
    update(['GetLevels']);
  }

}