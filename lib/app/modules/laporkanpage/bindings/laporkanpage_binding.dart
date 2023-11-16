import 'package:get/get.dart';

import '../controllers/laporkanpage_controller.dart';

class LaporkanpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporkanpageController>(
      () => LaporkanpageController(),
    );
  }
}
