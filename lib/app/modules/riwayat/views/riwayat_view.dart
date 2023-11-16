import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  const RiwayatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Terkirim'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: FutureBuilder(
          future: controller.getReport(),
          // future: controller.getReport(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text('${snapshot.data![index].map['nama']}'),
                          subtitle: Text(
                              'nomor : ${snapshot.data![index].map['nomor']} \nalamat : ${snapshot.data![index].map['alamat']}\nketerangan : ${snapshot.data![index].map['keterangan']}'),
                        ),
                      ),
                    )
                    // ListTile(
                    //   title: Text('Nama : ${snapshot.data}'),
                    // )
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return const Center(
                  child: Text('No Data'),
                );
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
