import 'dart:developer';

import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as myGet;
class HomeController extends myGet.GetxController{
  static  HomeController get  to => myGet.Get.find();
  final GlobalKey<ScaffoldState> key = GlobalKey();
  var selectedPage = 0.obs;
  late PageController pageController = PageController(initialPage: 0);
   List<levels_model_response> DataResult = [];
   List<Categories> DataResultCategories = [];
   Videos object = Videos();
  String tapTitle = '';
  @override
   void onInit()async{
     // await getDataCategories(Search: search.text);
     super.onInit();
   }
   @override
   void onClose(){
     pageController.dispose();
      super.onClose();


   }
   Future<void> getDataLevel()async{
      await HomeApiController().getAllLevels().then((value) {
        DataResult = <levels_model_response>[];
        DataResult = value;
        DataResult.sort((a, b) => a.name.compareTo(b.name));
      });
       update();
   }
   Future<void> getDataCategories({required String search})async{
     DataResultCategories = [];
     var listRsult = <Categories>[];
     List<Categories> list = await HomeApiController().getAllCategories();
     log('sss=>${list.length}');
     for (var element in list) {
       log('${element.letter} , message===.${search.toLowerCase().trim().toString() == element.letter.toLowerCase().trim().toString()} , $search');
       if((element.letter.toLowerCase().contains( search.toLowerCase()) && !listRsult.contains(element)) || (element.name.toLowerCase().contains( search.toLowerCase()))){
         listRsult.add(element);
        }else{
         DataResultCategories=[];
       }
     }
     DataResultCategories.addAll(listRsult);
     log(listRsult.length.toString());
     update();
    }
   void SetIndexPage(int value){
     selectedPage.value = value;
    }
   void SetVideos(value){
     object = value;
     update();
   }   void SetTapTitle(value){
     tapTitle = value;
     update();
   }

}