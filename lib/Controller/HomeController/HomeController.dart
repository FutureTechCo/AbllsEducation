import 'dart:developer';

import 'package:abllseducation/api/home_request_api/home_api_controller.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as myGet;
class HomeController extends myGet.GetxController{
  static  HomeController get  to => myGet.Get.find();
  final GlobalKey<ScaffoldState> key = GlobalKey();
  int selectedPage = 0;
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
      });
       update();
   }
   Future<void> getDataCategories({required String search})async{
     var listRsult = <Categories>[];
     List<Categories> list = await HomeApiController().getAllCategories();

     list.forEach((element) {
       if(element.name.toLowerCase() == search.toLowerCase() && !listRsult.contains(element)){
         listRsult.add(element);
       }
     });
     DataResultCategories = listRsult;
     log(listRsult.length.toString());
     update();
    }
   void SetIndexPage(value){
     selectedPage = value;
     update();
   }
   void SetVideos(value){
     object = value;
     update(['GetDataLevels']);
   }   void SetTapTitle(value){
     tapTitle = value;
     update(['GetDataLevels']);
   }

}