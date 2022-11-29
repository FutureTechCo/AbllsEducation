import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Screens/START _LOGIN/Information_Screen.dart';
import '../../Screens/START _LOGIN/LoginScreen.dart';
import '../../Screens/pplication interface/home.dart';
import '../../Utils/CheckPassword.dart';
import '../../Utils/HelperError.dart';
import '../../model/User_profile.dart';

import '../HomeGetxVar.dart';
import '../firebase_Controller/firebaseUser.dart';
import 'AuthController.dart';

class LoginGetx extends GetxController with Helper {
  LoginGetx get to => Get.find();
  late String pthe='';
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
  firebaseUser fireebadee =firebaseUser();
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
  user Userem=user(Name: 'زائر', number: 1, city: 'الدينة ', email: 'الايميل', contre: 'الدولة',
      password: '', ID_User: 'ID_User', UrlImage: 'UrlImage', path: '0');

  late  TextEditingController PNameController= TextEditingController();
  TextEditingController PCityController =  TextEditingController();
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
  void SetUrlImage(String n){
    UrlImageUsers = n;
    update();
  }
  String file_Path = '';
  void setfiles(String filespath){
    file_Path = filespath;
    update();
  }
  late String name;
  late String city;
  late String contre;
  late int number;
  profile(){
    PNameController  =  TextEditingController(text: name );
    PCityController =  TextEditingController(text: city);
    PContrController = TextEditingController(text: contre);
    PPhoneController = TextEditingController(text: number.toString());
  }
  Future<String> getUser ( String Id)async{

    Map<String, dynamic> data = await firebaseUser().getOneUser(Id);
    // Userem.fromMap(data);

    name=data['Name'].toString();
    city=data['city'].toString();
    contre=data['contre'].toString();
    print('****************');
    //int.parse(data['number'])
    number=11;
    print('****************');


    Userem=user(Name: name,
        number:number,
        city: city, email: email, contre: contre,
        password: 'password', ID_User: data['Id_user'].toString()
        , UrlImage: data['User_Image'].toString(), path: data['Path'].toString());
    SetUrlImage(data['User_Image'].toString());
    print('-***********--------------');
    return Userem.path;

  }
  getUseur ( String Id)async{

    Map<String, dynamic> data = await firebaseUser().getOneUser(Id);
    // Userem.fromMap(data);

    name=data['Name'].toString();
    city=data['city'].toString();
    contre=data['contre'].toString();
    print('****************');
    //int.parse(data['number'])
    number=11;
    print('****************');
    Userem=user(Name: name,
        number:number,
        city: city, email: email, contre: contre,
        password: 'password', ID_User: data['Id_user'].toString()
        , UrlImage: data['User_Image'].toString(), path: data['Path'].toString());
    SetUrlImage(data['User_Image'].toString());
    pthe= data['Path'];


  }
  /*SignInFunsction*/
  Future<void> SignInWithPasswordAndEmail(context) async {
    CheckPasswordAndEmail().Check(SPasswordController.text,
        SPasswordConfirmController.text, SEmailController.text, context);
    await FirebaseAuhController()
        .CreateAccount(
        context: context,
        eamil: SEmailController.value.text,
        password: SPasswordController.value.text)
        .then((value) {
      log('Id_user => ' + Id_user);
    });
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
      bool x=  await login(context: context);
      return x;
    }
    return false;
  }

  bool checkData({required BuildContext context}) {
    if (EmailController.text.isNotEmpty
        && PasswordController.text.isNotEmpty) {
      return true;
    }
    ShowSnackBar(
        context: context, Message: 'ادخل البيانات المطلوبة', Error: true);
    return false;
  }

  Future<bool> login({required BuildContext context}) async {
    bool status = await FirebaseAuhController().singin(
        context: context,
        email: EmailController.text,
        password: PasswordController.text);
    if (status) {
      print('*************************************1231564564');

      print(pthe);
      if(pthe=='0'){
        Get.to(()=>home());
        // Navigator.pushReplacementNamed(context, '/index_Screen');
      }
      else if(pthe=='1'){
       // Get.to(()=>control_Board());
        //  Navigator.pushReplacementNamed(context, '/control_Board');
      }



      HomeGetxVar().to.UpdateIndex(0);
      EmailController.text = '';
      PasswordController.text = '';
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


  Future<void> performCreateAccount_Admen({required BuildContext context}) async {
    if (checkDataCreateAccount_Admen(context: context)) {
      await CreateAccount_Admen(context: context);
    }
  }


  bool checkDataCreateAccount_Admen({required BuildContext context}) {
    return CheckPasswordAndEmail().Check(
        APasswordController.value.text,
        APasswordController.value.text,
        AEmailController.value.text,
        context);
  }

  Future<void> CreateAccount_Admen({required BuildContext context}) async {
    bool status = await FirebaseAuhController().CreateAccount(
        context: context,
        eamil:   AEmailController.text,
        password: APasswordController.text);
    if (status) {
      SetEmail(AEmailController.text);
      user User=user(Name: ANameController.text, number: 1, city: 'city', email: AEmailController.text, contre: 'contre',
          password: APasswordController.text, ID_User: Id_user, UrlImage: '', path: '1');
      await firebaseUser().addNewUser(User);
      clear_Admen();
    }
  }

  void clear_Admen() {
    AEmailController.text = '';
    APasswordController.text = '';
    ANameController.text='';
    AScandNameController.text='';
  }



  Future<bool> performCreateAccount_Admen_user({required BuildContext context}) async {
    if (checkDataCreateAccount_Admen_user(context: context)) {
      bool stetes= await CreateAccount_Admen_user(context: context);
      return stetes;
    }else{
      return false;
    }
  }


  bool checkDataCreateAccount_Admen_user({required BuildContext context}) {
    return CheckPasswordAndEmail().Check(
        UPasswordController.value.text,
        UPasswordController.value.text,
        UEmailController.value.text,
        context);
  }

  Future<bool> CreateAccount_Admen_user({required BuildContext context}) async {
    bool status = await FirebaseAuhController().CreateAccount(
        context: context,
        eamil:   UEmailController.text,
        password: UPasswordController.text);
    if (status) {
      SetEmail(UEmailController.text);
      user User=user(Name: UNameController.text, number: 1, city: 'city', email: UEmailController.text, contre: 'contre',
          password: UPasswordController.text, ID_User: Id_user, UrlImage: '', path: '0');
      await firebaseUser().addNewUser(User);
      clear_Admen_user();
      return status;
    }else{return false;}
  }

  void clear_Admen_user() {
    UEmailController.text = '';
    UPasswordController.text = '';
    UNameController.text='';
    UScandNameController.text='';
  }

  Future<void> logout() async {
    await FirebaseAuhController().SignOut();
   // await SharedPreferencesApp().clearData();
    Userem.Name = '';
    name = '';
    number = 0;
    city = '';
    contre = '';
    Get.offAll(() => LoginScreen());
  }
}
