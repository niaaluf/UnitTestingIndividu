import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loginpage_controller.dart';

class LoginpageView extends GetView<LoginpageController> {
  LoginpageView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  LoginpageController loginController = Get.put(LoginpageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Peduli Lingkungan',
            style:
                TextStyle(fontSize: 30, height: 3, fontWeight: FontWeight.bold),
          ),
          Image(image: AssetImage('image/safe.jpg'), height: 100, width: 100,),
          Text('Masuk',style:
                TextStyle(fontSize: 20, height: 3),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      onSaved: (newValue) {
                        if (newValue != null) {
                          _email = newValue;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                      onSaved: (newValue) {
                        if (newValue != null) {
                          _password = newValue;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: ElevatedButton(
                        onPressed: () {
                          _formKey.currentState?.save();
                          loginController.login(_email, _password);
                        },
                        child: Text('Login'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green[300]))),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          child: Text(" Belum punya akun? SIGN UP"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green[300]))
                          ),
                    ),
                  )
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
