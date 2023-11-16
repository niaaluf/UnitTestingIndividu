import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

class RiwayatController extends GetxController {
Firestore firestore = Firestore.instance;

  Future<Page<Document>> getReport() async {
    CollectionReference laporkan = firestore.collection('laporan');

    return laporkan.get();
  }

  Future<void> getData() async {
    final firestore = Firestore.instance;
    final laporkan = firestore.collection('laporan');
    final snapshot = await laporkan.get();
  }
}