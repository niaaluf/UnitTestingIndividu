import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('Beranda'),
        leading: IconButton(
            icon: Icon(Icons.list),
            color: Colors.white,
            iconSize: 30,
            tooltip: '',
            onPressed: () {}),
        actions: [
          IconButton(
            onPressed: () {Get.toNamed(Routes.LOGINPAGE);},
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.only(left: 1, right: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.report),
                    title: Text('Laporkan'),
                    subtitle: Text(
                        'Laporkan sampah yang ada disekitar anda agar petugas dapat mengangkut dan membersikannya'),
                  ),
                  Image(image: AssetImage('image/laporkan.jpg'), height:100, width: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                          child: Text('Lanjutkan'),
                          onPressed: () {
                            Get.toNamed(Routes.LAPORKANPAGE);
                          }),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.only(left: 1, right: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.home_work),
                    title: Text('Bank Sampah'),
                    subtitle: Text(
                        'Bank Sampah adalah tempat pengumpulan sampah kering yang dipilah serta memiliki manajemen layaknya perbankan tapi yang ditabung bukan uang melainkan sampah. Lihat lokasi Bank Sampah terdekat'),
                  ),
                  Image(image: AssetImage('image/bank.jpg'), height:100, width: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text('Lanjutkan'),
                        onPressed: () {
                          Get.toNamed(Routes.BANKSAMPAH);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.only(left: 1, right: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.list_alt),
                    title: Text('Riwayat'),
                    subtitle: Text(
                        'Riwayat berisi data laporan yang telah dikirim'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text('Lanjutkan'),
                        onPressed: () {
                          Get.toNamed(Routes.RIWAYAT);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
