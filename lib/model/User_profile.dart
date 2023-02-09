import 'package:flutter/material.dart';

class user{
  late String Name='';
  late int number;
  late String city;
  late String email;
  late String contre;
  late String password;
  late String ID_User;
  late String UrlImage = '';
  late String path;
  user();

  Map<String,dynamic > toMap(){
    return{
      'Name':Name,
      'number':number,
      'city':city,
      'email':email,
      'contre':contre,
      'Id_user':ID_User,
      'User_Image':UrlImage,
      'Path':path
    };
  }

  fromMap(Map<String,dynamic> data){
    /*late String Name;
late int number;
late String city;
late String email;
late String contre;
late String password;
late String ID_User;
late String UrlImage;
late String path;*/
    Name=data['Name'];
    number=data['number'];
    city=data['city'];
    email=data['email'];
    contre=data['contre'];
    ID_User=data['ID_User'];
    // password ='data';
    UrlImage=data['UrlImage'];
    path=data['path'];
  }

}
