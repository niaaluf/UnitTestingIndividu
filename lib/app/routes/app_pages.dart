import 'package:get/get.dart';

import '../modules/banksampah/bindings/banksampah_binding.dart';
import '../modules/banksampah/views/banksampah_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/laporkanpage/bindings/laporkanpage_binding.dart';
import '../modules/laporkanpage/views/laporkanpage_view.dart';
import '../modules/loginpage/bindings/loginpage_binding.dart';
import '../modules/loginpage/views/loginpage_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGINPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LAPORKANPAGE,
      page: () => const LaporkanpageView(),
      binding: LaporkanpageBinding(),
    ),
    GetPage(
      name: _Paths.BANKSAMPAH,
      page: () => const BanksampahView(),
      binding: BanksampahBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => LoginpageView(),
      binding: LoginpageBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
  ];
}
