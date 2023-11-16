import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  
  Future signUp(String email, String pass) async {
    try{
    await firebaseAuth.signUp(email, pass);
    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Akun berhasil diregister",
      onConfirm: () {
        Get.back();
        Get.back();
      },
      textConfirm: "okay",
    );
  }
  catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: EMAIL_EXISTS") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Email sudah terdaftar",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: WEAK_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Password terlalu lemah",
          duration: Duration(seconds: 2),
        ));
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }
}