import 'dart:developer';
import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../AuthController/GetxLogin.dart';
import 'firebaseUser.dart';
typedef ImegUploadEvent =void Function({
required bool status,
required TaskState taskState,
Reference? reference
});
class FirebasreStorges {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  firebaseUser firebaseU=firebaseUser();
  /*Upload Image To Firebase */

  ImagePicker imagePicker = ImagePicker();
  var random = new Random();
  Future<void> imeg()async{
    LoginGetx().to. file = await imagePicker.pickImage(source: ImageSource.gallery,imageQuality:50);
    if ( LoginGetx().to.file != null) {
      LoginGetx().to.setfiles( LoginGetx().to.file!.path);
    }
  }
  Future<Reference?>uplodImage()async{
    if ( LoginGetx().to.file != null) {
      String nameImage =  LoginGetx().to.file!.name;
      String Extintion = nameImage.substring(nameImage.indexOf('.') + 1);
      try{
        var ref = _firebaseStorage.ref(
            'userImages/${DateTime.now()}_${random.nextInt(100000)}_image.$Extintion');
        await ref.putFile(File( LoginGetx().to.file!.path));
        String _Url = await ref.getDownloadURL();
        LoginGetx().to.UrlImageUsers=_Url;
        LoginGetx().to.SetUrlImage(_Url);
        return ref;
      } on FirebaseException catch (e) {
        print(e);
      }  }else{
      return null;
    }
  }


  Future<Reference?> UploadImage(String path) async {


    if ( LoginGetx().to.file != null) {
      print('********************');
      DeleteImage(LoginGetx().to.UrlImageUsers);
      String nameImage =  LoginGetx().to.file!.name;
      String Extintion = nameImage.substring(nameImage.indexOf('.') + 1);
      try{
        var ref = _firebaseStorage.ref(
            'userImages/${DateTime.now()}_${random.nextInt(100000)}_image.$Extintion');
        await ref.putFile(File(LoginGetx().to.file!.path));
        String _Url = await ref.getDownloadURL();
        print(_Url);
        LoginGetx().to.UrlImageUsers=_Url;
        LoginGetx().to.SetUrlImage(_Url);
        return ref;
      } on FirebaseException catch (e) {
        print(e);
      }  }else{
      return null;
    }
  }

  Future<void> uploadImag({required String filePath,required ImegUploadEvent imegUploadEvent})async{
    UploadTask uploadTask=_firebaseStorage.ref('userImages/${DateTime.now()}_${random.nextInt(100000)}_image').putFile(File(filePath));
    uploadTask.snapshotEvents.listen((event) {
      if(event.state==TaskState.running){
        imegUploadEvent(status: false,taskState: event.state);
      }else if(event.state==TaskState.error){
        imegUploadEvent(status: false,taskState: event.state);
      } else if(event.state==TaskState.success){
        imegUploadEvent(status: true,taskState: event.state,reference: event.ref);

      }

    });

  }
  Future<List<Reference>>getImages()async{
    ListResult listResult =await _firebaseStorage.ref('userImages/').listAll();
    if(listResult.items.isNotEmpty){
      return listResult.items;
    }
    return [];
  }
  DeleteImage(path)async{
    await _firebaseStorage.ref(path).delete().then((value){
      print('تم الحذف بنجاح');
    });
  }

}
