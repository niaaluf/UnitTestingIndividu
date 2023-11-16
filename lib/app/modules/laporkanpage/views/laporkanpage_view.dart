import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/laporkanpage_controller.dart';

class LaporkanpageView extends GetView<LaporkanpageController> {
  const LaporkanpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('Laporkan Tumpukan Sampah'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
          tooltip: '',
          onPressed: () {Get.toNamed(Routes.HOME);},
        ),
      ),
      body: Form(
        key: controller.loginFormKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.namaC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  label: const Text('Nama Lengkap'),
                  hintText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                    if (newValue != null) {
                      controller.namaC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validateName(value!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.nomorC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  icon: Icon(Icons.phone_android),
                  label: const Text('Nomor Telephone'),
                  hintText: 'Nomor Telephone',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                    if (newValue != null) {
                      controller.nomorC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validateNomor(value!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.alamatC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  icon: Icon(Icons.home),
                  label: const Text('Alamat'),
                  hintText: 'Alamat Penjemputan Sampah',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                    if (newValue != null) {
                      controller.alamatC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validateAlamat(value!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.keteranganC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  icon: Icon(Icons.note_add_sharp),
                  label: const Text('Keterangan'),
                  hintText: 'Keterangan',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                    if (newValue != null) {
                      controller.keteranganC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validateKeterangan(value!);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await controller.savedata(controller.namaC.text,controller.nomorC.text,controller.alamatC.text,controller.keteranganC.text);
                  },
                  child: const Text('Laporkan'),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green[300])),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
