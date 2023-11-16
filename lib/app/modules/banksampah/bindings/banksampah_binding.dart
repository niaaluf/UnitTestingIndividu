import 'package:get/get.dart';

import '../controllers/banksampah_controller.dart';

class BanksampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BanksampahController>(
      () => BanksampahController(),
    );
  }
}
