import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../model/User_profile.dart';
import '../AuthController/GetxLogin.dart';
import '../HomeGetxVar.dart';
import 'FirebasreStorges.dart';


class firebaseUser {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addNewUser(user User) async {
    await firestore.collection('user').doc(User.ID_User).set(User.toMap());
  }

  getOneUser(String id) async {
    DocumentSnapshot<Map<String, dynamic>> oneUser =
    await firestore.collection('user').doc(id).get();
    //  Getx_images.to.Userem.fromMap(value.data()));
    Map<String, dynamic>? dataUser =await oneUser.data();
    return dataUser;


  }

  Future<List<Map<String, dynamic>>> getAllUser() async {
    QuerySnapshot<Map<String, dynamic>> data =
    await firestore.collection('user').get();
    List<Map<String, dynamic>> dataUser =
    data.docs.map((e) => e.data()).toList();
    return dataUser;
  }

  ADD_User(String path) async {
    await FirebasreStorges().uplodImage();
    user addNewUsers = user(
      );
    await addNewUser(addNewUsers);
    LoginGetx().to.ICityController.text = '';
    LoginGetx().to.ICountryController.text = '';
    LoginGetx().to.INameController.text = '';
    LoginGetx().to.IPhoneController.text = '';
  }


//yield* firestore.collection('video').orderBy(descending: true).snapshots();
  Stream<QuerySnapshot> read_video() async* {
    yield* firestore.collection('video').orderBy('timestamp',descending: true).snapshots();
  }

  /*   await firestore
       .collection('user')
       .doc(SharedPreferencesApp().GetIdUser)
       .update({
     'Name': LoginGetx().to.PNameController.text,

   }).then((value) =>print('true')).catchError((error){print(error);});
 }*/
  Future<List<Map<String, dynamic>>> getAllPost() async {
    QuerySnapshot<Map<String, dynamic>> data =
    await firestore.collection('posts').get();
    List<Map<String, dynamic>> posts =
    data.docs.map((e) => e.data()).toList();
    return posts;
  }






  /**GetPostInFirebase*/


  /*GetDataUser*/


  UpdateUser(String path) async {
    await FirebasreStorges().UploadImage(path);
    await firestore
        .collection('user')
        .doc('3')
        .update({
      'Name': LoginGetx().to.PNameController.text,
      'User_Image':LoginGetx().to.UrlImageUsers==''?'': LoginGetx().to.UrlImageUsers,
      'city': LoginGetx().to.PCityController.text,
      'contre': LoginGetx().to.PContrController.text,
      'number': LoginGetx().to.PPhoneController.text,
      'Path':path
    }).then((value) =>print('true')).catchError((error){print(error);});
  }

  Future<bool>deletePost(String id)async{
    return firestore.collection("posts").doc(id)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool>deleteUser(String id)async{
    return firestore.collection("user").doc(id)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }
  Future<bool>deletepost(String id)async{
    return firestore.collection("posts").doc(id)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }


}
