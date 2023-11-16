import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/data/hive_store.dart';
import 'app/data/token_adpater.dart';
import 'app/routes/app_pages.dart';

const apiKey = "AIzaSyCt3MvdTEPIqyiCdDsxO4quOAwx6XTQvAo";
const projectId = "finalproject-ada0f";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TokenAdapter());

  FirebaseAuth.initialize(apiKey, await HiveStore.create());
  runApp(const MyApp());

  Firestore.initialize(projectId);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
