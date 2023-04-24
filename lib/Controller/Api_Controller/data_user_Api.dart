import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../api/SettingApi.dart';
import '../../model/User_profile.dart';
import '../../model/user_n.dart';

class user_controler {
  Future<bool> addUser({required user_n User}) async {
    print("path:" +
        User.avatar! +
        "\n" +
        User.cusId! +
        "\n" +
        User.name! +
        "\n" +
        User.email! +
        "\n" +
        User.country! +
        "\n" +
        User.phone.toString());
    var url = Uri.parse(SettingApiUri.customer);
    if (User.avatar!.isNotEmpty) {
      var requst = http.MultipartRequest('post', url);
      var file = await http.MultipartFile.fromPath('avatar', User.avatar!);
      requst.files.add(file);
      requst.fields.addAll({
        "cus_id": User.cusId!,
        "name": User.name!,
        "email": User.email!,
        "country": User.country!,
        "phone": User.phone!,
      });
      var respons = await requst.send();
      print(respons.statusCode);
      if (respons.statusCode == 201) {
        var data = await respons.stream.transform(utf8.decoder).first;
        var usser = jsonDecode(data);
        user_n x = user_n.fromJson(usser);

        return true;
      } else {
        return false;
      }
    }else{
      var res = await http.post(url,body: {
        "cus_id": User.cusId!,
        "name": User.name!,
        "email": User.email!,
        "country": User.country!,
        "phone": User.phone!,
      });
      return true;
    }
  }

  //update avatar
  Future<void> updetUser({required String path, required String id}) async {
    var url = Uri.parse(SettingApiUri.update);
    var requst = http.MultipartRequest('post', url);
    var file = await http.MultipartFile.fromPath('avatar', path);
    requst.files.add(file);
    requst.headers['cus_id'] = id;
    var respons = await requst.send();

    print(respons.statusCode);
  }

  Future<user_n> getDataUser(id) async {
    print("${SettingApiUri.customer_data}/$id");
    var url = Uri.parse("${SettingApiUri.customer_data}/$id");
    var response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("**********8");
      var usser = jsonDecode(response.body);
      user_n x = user_n.fromJson(usser);
      return x;
    }
    user_n x = user_n(name: '');
    return x;
  }
} /*    */
