import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  String email = " ";
  String pass = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Daftar',
            style:
                TextStyle(fontSize: 40, height: 3, fontWeight: FontWeight.bold),
          ),
          Form(
            key: controller.loginFormKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      label: const Text('Email'),
                      hintText: 'Isi Email',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (newValue) {
                      email = newValue;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      label: const Text('Password'),
                      hintText: 'Isi Password',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (newValue) {
                      pass = newValue;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          await controller.signUp(email, pass);
                        },
                        child: const Text('SIGN UP'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green[300]))),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){ Get.toNamed(Routes.LOGINPAGE);},
                        child: const Text('Sudah punya akun'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green[300]))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
