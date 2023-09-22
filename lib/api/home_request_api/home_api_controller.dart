import 'dart:convert';
import 'dart:developer';
import 'package:abllseducation/Controller/HomeController/HomeController.dart';
import 'package:abllseducation/Controller/SharedPreferences/SharedPreferences.dart';
import 'package:abllseducation/Utils/HelperError.dart';
import 'package:abllseducation/api/SettingApi.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:abllseducation/model/subscribe_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeApiController  with Helper{
  HomeApiController._();
  static final HomeApiController _inst = HomeApiController._();
  factory HomeApiController() {
    return _inst;
  }
  Future<List<levels_model_response>> getAllLevels() async {
     List<levels_model_response> DataResult;
    var url = Uri.parse(SettingApiUri.Levels+SharedPreferencesApp().GetIdUser);
    var response = await http.get(url);
    if (response.statusCode == 200) {
       DataResult = <levels_model_response>[];
      jsonDecode(response.body).values.forEach((e) {
        log('messageAE=>${e}');
        if(levels_model_response.fromJson(e).categories.isNotEmpty) {
          DataResult.add(levels_model_response.fromJson(e));
        }
      });
      return DataResult;
    }
    return [];
  }

  
  Future<List<Categories>> getAllCategories()async{
    List<Categories> DataResult;
    Map amp  = {};
     var url = Uri.parse(SettingApiUri.Categories+'?cus_id=${SharedPreferencesApp().GetIdUser}');
    var response = await http.get(url);
     if (response.statusCode == 200) {
      DataResult = <Categories>[];
      jsonDecode(response.body).forEach((e) {
        DataResult.add(Categories.fromJson(e));
      });
      return DataResult;
    }
    return [];
  }
  Future<void> WatchVideo({required BuildContext context,required String uid,required String vid})async{
    if(SharedPreferencesApp().GetIdUser == '1'){
      ShowSnackBar(context: context, Message: 'يجب عليك الدخول باستخدام الحساب', Error: false);
    }else{
      var url = Uri.parse(SettingApiUri.watch);
      var response = await http.post(url,body: {
        'cus_id':uid,'video_id':vid
      });
      if (response.statusCode == 200) {
        log('Done Watch Video');
        ShowSnackBar(context: context, Message: 'لم يتم المشاهدة', Error: true);
      }else if(response.statusCode == 201){
        ShowSnackBar(context: context, Message: 'تم المشاهدة', Error: true);
      }
    }
  }
  ///subscribe subscribe subscribe subscribe subscribe subscribe subscribe
  Future<List<subscribe_model>> getAllSubscribe()async{
    List<subscribe_model> DataResult = [];
    //${SharedPreferencesApp().GetIdUser}
     var url = Uri.parse(SettingApiUri.subscribe+'?cus_id=asd32qw1e5qw46eeeee');
    var response = await http.get(url);
    if (response.statusCode < 400) {
      log('message=>${response.body}');
      DataResult = <subscribe_model>[];
      jsonDecode(response.body).forEach((e) {
        DataResult.add(subscribe_model.fromJson(e));
      });
     }
    return DataResult;
  }
}
