import 'dart:convert';

import '../../api/SettingApi.dart';
import '../../model/rebort.dart';
import 'package:http/http.dart' as http;

class reboet_Api{

 /* Future<List<levels_model>> getDataUser({required cus_id, level_id, category_id})async{
    var url;
    if(level_id != null && category_id != null){
      url = Uri.parse("${SettingApiUri.report}cus_id=$cus_id&level_id=$level_id&category_id=$category_id");
    }else if(category_id == null){
      url = Uri.parse("${SettingApiUri.report}cus_id=$cus_id&level_id=$level_id");
    }else if(level_id == null){
      url = Uri.parse("${SettingApiUri.report}cus_id=$cus_id&category_id=$category_id");
    }

    print("${SettingApiUri.report}cus_id=$cus_id&level_id=$level_id&category_id=$category_id");
    var response = await http.get(url );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var Rebort=jsonDecode(response.body);
      report x =report.fromJson(Rebort);
      return x;
    }
    report x =report();
    return  x ;
  }*/
  int i=0;
  Future<List<Level>?> getrebort({required cus_id}) async {
    List<Level>? DataResult;
    var  url = Uri.parse("${SettingApiUri.report}cus_id=$cus_id");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      DataResult = <Level>[];
      var Rebort =jsonDecode(response.body);
      rebort_cust x =rebort_cust.fromJson(Rebort);

      DataResult =x.Leveles;

      print("name:${DataResult![i].name} totel ${i}");
      i++;
      return DataResult;
    }
    return [];
  }
  Future<Level?> getLevel({required cus_id,required level_id}) async {
   var url = Uri.parse("${SettingApiUri.report}cus_id=$cus_id&level_id=$level_id");
    var response = await http.get(url );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var Rebort=jsonDecode(response.body);
      print(Rebort.toString());
      rebort x= rebort.fromJson(Rebort);
      Level? y =x.level;
      print(y?.name);

      return y;
    }
    var x;
    return  x ;
  }

}