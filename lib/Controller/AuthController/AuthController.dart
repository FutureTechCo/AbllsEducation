import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Utils/HelperError.dart';
import '../../model/User_profile.dart';

import '../SharedPreferences/SharedPreferences.dart';
import 'GetxLogin.dart';

class FirebaseAuhController with Helper {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<bool> CreateAccount(
      {required BuildContext context,
        required String eamil,
        required String password}) async {
    try {
      UserCredential UserC = await _firebaseAuth.createUserWithEmailAndPassword(
          email: eamil, password: password);
      log('user  => ${UserC.user!.uid}');

      LoginGetx().to.SetI(UserC.user!.uid);
      LoginGetx().to.SetEmail(UserC.user!.email.toString());
      await SharedPreferencesApp().SaveIdUser(Idu: UserC.user!.uid);

      bool a = await emailVerified_user(UserC, context);
      return a;
    } on FirebaseAuthException catch (e) {
      log('Error => ${e.code}');
      switch (e.code) {
        case 'email-already-in-use':
          break;
        case 'operation-not-allowed':
          break;
        case 'weak-password':
          break;
        case 'invalid-email':
          ShowSnackBar(
              context: context,
              Message: 'عنوان البريد الإلكتروني غير صالح',
              Error: false);
          break;
        case 'user-disabled':
          ShowSnackBar(
              context: context, Message: 'تم تعطيل الحساب', Error: false);
          break;
        case 'wrong-password':
          ShowSnackBar(
              context: context, Message: 'كلمه السر غير صحيحه', Error: false);
          break;
      }
    } catch (e) {
      print("خطاء غير متوقع$e");
    }
    return false;
  }

  Future<bool> emailVerified_user(
      UserCredential userCredential, BuildContext context) async {
    if (!userCredential.user!.emailVerified) {
      await userCredential.user!.sendEmailVerification();

      return true;
    } else {


      return false;
    }
  }


  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  Future<bool> singin(
      {required BuildContext context,
        required String email,
        required String password}) async {
    try {
      UserCredential     userC = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        return value;
      });
   //   await LoginGetx().to.getUseur(userC.user!.uid);

      LoginGetx().to.SetI(userC.user!.uid);
      LoginGetx().to.SetEmail(userC.user!.email.toString());
      await SharedPreferencesApp().SaveIdUser(Idu: userC.user!.uid);
      return true;
      // return await emailVerified_user(userC, context);
    } on FirebaseException catch (e) {
      print(e);
      // _controlException(context:context,exception:e);
    } catch (e) {
      print("خطاء غير متوقع$e");
    }
    return false;
  }

  bool get isLoggedIn => _firebaseAuth.currentUser != null;

  Future<void> ForgetPassCode(email, context) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email).then((value) {
        ShowSnackBar(
            context: context, Message: 'تفقد بريدك الالكتروني', Error: true);
      });
    } on FirebaseAuthException catch (ee) {}
  }
}
