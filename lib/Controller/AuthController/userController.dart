import 'package:abllseducation/Controller/AuthController/InfoGetController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../model/User_profile.dart';
import '../../model/user_n.dart';
import '../Api_Controller/data_user_Api.dart';
import '../SharedPreferences/SharedPreferences.dart';
import 'GetxLogin.dart';

class userController extends GetxController {
  static userController get to => Get.find();
  late String avatar = '';
  late String id = '';
  late String name = '';
  late String country = '';
  late String email = '';
  late String phone = '';
  late user_n User = user_n();

  new_user() {
    User.name = InfoGetController.to.name.text;
    name = InfoGetController.to.name.text;
    update();
    User.country = InfoGetController.to.country.text;
    country = InfoGetController.to.country.text;
    User.cusId = LoginGetx().to.Id_user;
    id = LoginGetx().to.Id_user;
    User.email = LoginGetx().to.email;
    email = LoginGetx().to.email;
    User.avatar = InfoGetController.to.image == null ?'' : InfoGetController.to.image!.path ;
    avatar =  InfoGetController.to.image == null ?'' : InfoGetController.to.image!.path ;
    User.phone = InfoGetController.to.phone.text;
    update();
    phone = InfoGetController.to.phone.text;
    update();
    return User;
  }

  Future<bool> add_user({required user_n user}) async {
    bool x = await user_controler().addUser(User: user);
    if (x) {
      get_data_user(id: SharedPreferencesApp().GetIdUser);
    }
    return x;
  }

  ubdet_user({required user User}) async {
    await user_controler().updetUser(path: User.path, id: User.ID_User);
  }

  get_data_user({required id}) async {
    User = await user_controler().getDataUser(id);
    avatar = User.avatar!;
    name = User.name!;
    id = User.cusId!;
    country = User.country!;
    phone = User.phone!;
    email = User.email!;
    update();
  }

  cler_data() {
    avatar = '';
    name = '';
    id = '';
    country = '';
    phone = '';
    email = '';
    update();
  }
}
