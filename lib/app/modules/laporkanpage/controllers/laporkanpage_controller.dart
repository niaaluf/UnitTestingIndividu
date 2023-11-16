import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaporkanpageController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  CollectionReference finalproject = Firestore.instance.collection('laporan');
  late TextEditingController namaC, nomorC, alamatC, keteranganC;

  @override
  void onInit() {
    super.onInit();
    namaC = TextEditingController();
    nomorC = TextEditingController();
    alamatC = TextEditingController();
    keteranganC = TextEditingController();
  }
  String? validateName(String value) {
    if (value.isEmpty) {
      return "nama harus di isi";
    }
    return null;
  }
  String? validateNomor(String value) {
    if (value.isEmpty) {
      return "Nomor harus di isi";
    }
    return null;
  }
  String? validateAlamat(String value) {
    if (value.isEmpty) {
      return "Alamat harus di isi";
    }
    return null;
  }
  String? validateKeterangan(String value) {
    if (value.isEmpty) {
      return "Keterangan harus di isi";
    }
    return null;
  }
  Future savedata(String nama, String nomor, String alamat, String keterangan) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await finalproject.add({
        "nama": nama,
        "nomor": nomor,
        "alamat": alamat,
        "keterangan": keterangan
      });
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    }
  }
}
