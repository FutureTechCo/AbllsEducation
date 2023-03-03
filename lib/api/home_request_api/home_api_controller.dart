import 'dart:convert';
import 'dart:developer';
import 'package:abllseducation/api/SettingApi.dart';
import 'package:abllseducation/model/levels_model_response.dart';
import 'package:http/http.dart' as http;

class HomeApiController {
  HomeApiController._();
  static final HomeApiController _inst = HomeApiController._();
  factory HomeApiController() {
    return _inst;
  }
  Future<List<levels_model_response>> getAllLevels() async {
    List<levels_model_response> DataResult;
    var url = Uri.parse(SettingApiUri.Levels);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('ppppppp');
      DataResult = <levels_model_response>[];
      jsonDecode(response.body).forEach((e) {
        DataResult.add(levels_model_response.fromJson(e));
      });
      return DataResult;
    }
    return [];
  }

  
  Future<List<Categories>> getAllCategories()async{
    List<Categories> DataResult;
    var url = Uri.parse(SettingApiUri.Categories);
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
  Future<void> WatchVideo({required String uid,required String vid})async{
    var url = Uri.parse(SettingApiUri.watch);
    var response = await http.post(url,body: {
      'cus_id':uid,'video_id':vid
    });
    if (response.statusCode == 200) {
      log('Done Watch Video');
    }
  }
}
