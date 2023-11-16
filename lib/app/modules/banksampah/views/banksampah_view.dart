import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/banksampah_controller.dart';

class BanksampahView extends GetView<BanksampahController> {
  const BanksampahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green[300],
        title: Text('Bank Sampah'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
          tooltip: '',
          onPressed: () {
            Get.toNamed(Routes.HOME);
          },
        ),
      ),
      body:
          Column(
            children: [
              SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: 
              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 100, right: 100,bottom: 20, top: 10),
                  child: Column(
                    children: [
                      Image( 
                                  image: AssetImage('image/bank1.jpg'), 
                                  height: 200, 
                                  width: 200, 
                                ),
                    
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Lokasi Bank Sampah 1',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.only( 
                                left: 100, right: 100, bottom: 50, top: 10), 
                  child: Column(
                    children: [
                      Image( 
                                  image: AssetImage('image/bank2.jpg'), 
                                  height: 200, 
                                  width: 200, 
                                ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Lokasi Bank Sampah 2',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
            ],
          ),
    );
  }
}
