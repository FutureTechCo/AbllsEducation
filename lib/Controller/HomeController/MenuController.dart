import 'dart:io';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class menuController extends GetxController{
  static menuController get to => Get.find();
  final Uri url = Uri.parse('https://play.google.com/store/apps/details?id=com.abllseducation.ios.flutter.android.abllseducation');
  final Uri facebook = Uri.parse('https://www.facebook.com/tala.talatala.33');
  final Uri GoogleMail = Uri.parse('mailto:tala.0917025511@gmail.com');
  final Uri WatsApp = Uri.parse("whatsapp://send?phone=+218926492561&text=السلام عليكم");
  Future<void> launchUrls(url) async {
    if (!await launchUrl(Platform.isAndroid?url:Uri.parse(''))) {
      throw 'Could not launch $url';
    }
  }
}