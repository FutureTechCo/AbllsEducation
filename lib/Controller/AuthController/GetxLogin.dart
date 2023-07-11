import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Screens/START _LOGIN/LoginScreen.dart';
import '../../Screens/START _LOGIN/SingIn.dart';
import '../../Screens/START _LOGIN/infrmation.dart';
import '../../Screens/pplication interface/home.dart';
import '../../Utils/CheckPassword.dart';
import 'package:abllseducation/Utils/HelperError.dart';
import '../../model/User_profile.dart';
import '../../Controller/AuthController/userController.dart';

import '../HomeGetxVar.dart';
import '../SharedPreferences/SharedPreferences.dart';
import '../firebase_Controller/firebaseUser.dart';
import 'AuthController.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

import 'InfoGetController.dart';

class LoginGetx extends GetxController with Helper {
  LoginGetx get to => Get.find();
  late String pthe = '';
  final TextInputType text_input = TextInputType.text;
  final TextInputType email_input = TextInputType.emailAddress;
  final TextInputType Password_input = TextInputType.visiblePassword;

  /*Start Var LoginScreen*/
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  bool State = false;
  XFile? file;

  void Set_State(bool b) {
    State = b;
    update();
  }

  firebaseUser fireebadee = firebaseUser();

  /*End Var LoginScreen*/

  /*Start Var SignUpScreen*/
  final TextEditingController SEmailController = TextEditingController();
  final TextEditingController SPasswordController = TextEditingController();
  final TextEditingController SPasswordConfirmController =
      TextEditingController();
  bool $State = false;

  void Set$State(bool b) {
    $State = b;
    update();
  }

//@override
//  void onInit() async{
//    // TODO: implement onInit
//    super.onInit();
//    await fireebadee.getOneUser(Id_user);
//  }
  /*End Var SignUpScreen*/

  /*Start Var InformationScreen*/
  final TextEditingController INameController = TextEditingController();
  final TextEditingController IPhoneController = TextEditingController();
  final TextEditingController ICityController = TextEditingController();
  final TextEditingController ICountryController = TextEditingController();

  /*End Var InformationScreen*/

  /*Add_Admen*/
  final TextEditingController ANameController = TextEditingController();
  final TextEditingController AScandNameController = TextEditingController();
  final TextEditingController AEmailController = TextEditingController();
  final TextEditingController APasswordController = TextEditingController();

  /*Add_User*/
  final TextEditingController UNameController = TextEditingController();
  final TextEditingController UScandNameController = TextEditingController();
  final TextEditingController UEmailController = TextEditingController();
  final TextEditingController UPasswordController = TextEditingController();
  final TextEditingController AddCommit = TextEditingController();

  /*aDD cOMMIT*/
  user Userem = user();

  late TextEditingController PNameController = TextEditingController();
  TextEditingController PCityController = TextEditingController();
  TextEditingController PContrController = TextEditingController();
  TextEditingController PPhoneController = TextEditingController();

  String Id_user = '';

  void SetI(String id) {
    Id_user = id;
    update();
  }

  String email = '';

  void SetEmail(String e) {
    email = e;
    update();
  }

  String UrlImageUsers = '';

  void SetUrlImage(String n) {
    UrlImageUsers = n;
    update();
  }

  String file_Path = '';

  void setfiles(String filespath) {
    file_Path = filespath;
    update();
  }

  late String name;
  late String city;
  late String contre;
  late int number;

  profile() {
    PNameController = TextEditingController(text: name);
    PCityController = TextEditingController(text: city);
    PContrController = TextEditingController(text: contre);
    PPhoneController = TextEditingController(text: number.toString());
  }

  Future<String> getUser(String Id) async {
    Map<String, dynamic> data = await firebaseUser().getOneUser(Id);
    // Userem.fromMap(data);

    name = data['Name'].toString();
    city = data['city'].toString();
    contre = data['contre'].toString();
    print('****************');
    //int.parse(data['number'])
    number = 11;
    print('****************');

    Userem = user();
    SetUrlImage(data['User_Image'].toString());
    print('-***********--------------');
    return Userem.path;
  }

  getUseur(String Id) async {
    Map<String, dynamic> data = await firebaseUser().getOneUser(Id);
    // Userem.fromMap(data);

    name = data['Name'].toString();
    city = data['city'].toString();
    contre = data['contre'].toString();
    print('****************');
    //int.parse(data['number'])
    number = 11;
    print('****************');
    Userem = user();
    SetUrlImage(data['User_Image'].toString());
    pthe = data['Path'];
  }

  /*SignInFunsction*/
  Future<void> SignInWithPasswordAndEmail(context) async {
    if (CheckPasswordAndEmail().Check(SPasswordController.text,
        SPasswordConfirmController.text, SEmailController.text, context)) {
      await FirebaseAuhController()
          .CreateAccount(
              context: context,
              eamil: SEmailController.value.text,
              password: SPasswordController.value.text)
          .then((value) {
        Navigator.pushReplacementNamed(context, '/InformationScreen');
        log('Id_user => ' + Id_user);
      });
    }
  }

  bool CheckPassword(context) {
    if ((SPasswordController.text == SPasswordConfirmController.text) &&
        SPasswordConfirmController.text.length >= 6 &&
        SPasswordController.text.length >= 6) {
      return true;
    } else {
      ShowSnackBar(
          context: context, Message: 'كلمه المرور غير متطابقه', Error: true);
      return false;
    }
  }

  Future<bool> performLogin({required BuildContext context}) async {
    if (checkData(context: context)) {
      bool x = await login(context: context);
      return x;
    }
    return false;
  }

  bool checkData({required BuildContext context}) {
    if (InfoGetController.to.email_Login.text.isNotEmpty &&
        InfoGetController.to.password_Login.text.isNotEmpty) {
      return true;
    }
    ShowSnackBar(
        context: context, Message: 'ادخل البيانات المطلوبة', Error: true);
    return false;
  }

  Future<bool> login({required BuildContext context}) async {
    bool status = await FirebaseAuhController().singin(
        context: context,
        email: InfoGetController.to.email_Login.text,
        password: InfoGetController.to.password_Login.text);
    if (status) {
      //SharedPreferencesApp().SaveIdUser(Idu: '123123123');
      print(SharedPreferencesApp().GetIdUser);
      userController.to.get_data_user(id: SharedPreferencesApp().GetIdUser);

      Navigator.pushReplacementNamed(context, routapp.home);
      InfoGetController.to.email_Login.text = '';
      InfoGetController.to.password_Login.text = '';
      return true;
    } else {
      ShowSnackBar(
          context: context,
          Message: 'خطاء في الدخول اعد المحاوله',
          Error: false);
      return false;
    }
  }

  Future<void> performCreateAccount({required BuildContext context}) async {
    if (checkDataCreateAccount(context: context)) {
      await CreateAccount(context: context);
    }
  }

  bool checkDataCreateAccount({required BuildContext context}) {
    return CheckPasswordAndEmail().Check(
        SPasswordController.value.text,
        SPasswordConfirmController.value.text,
        SEmailController.value.text,
        context);
  }

  Future<void> CreateAccount({required BuildContext context}) async {
    bool status = await FirebaseAuhController().CreateAccount(
        context: context,
        eamil: SEmailController.text,
        password: SPasswordController.text);
    if (status) {
      SetEmail(SEmailController.text);
      Get.to(() => InformationScreen());
      clear();
    }
  }

  void clear() {
    SEmailController.text = '';
    SPasswordController.text = '';
    SPasswordConfirmController.text = '';
  }

  Future<void> logout(context) async {
    await FirebaseAuhController().SignOut();
    await SharedPreferencesApp().clearData();
    userController.to.cler_data();
    Userem.Name = '';
    name = '';
    number = 0;
    city = '';
    contre = '';
    Navigator.pushReplacementNamed(context, routapp.SignInScreen);
  }
}
