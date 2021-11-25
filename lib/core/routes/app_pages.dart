import 'package:get/get.dart';
// import 'package:programow_flutter_getx_boilerplate/app/bindings/auth_binding.dart';
import 'package:programow_flutter_getx_boilerplate/core/bindings/details_binding.dart';
import 'package:programow_flutter_getx_boilerplate/core/bindings/home_binding.dart';
// import 'package:programow_flutter_getx_boilerplate/app/ui/views/auth/login_view.dart';
import 'package:programow_flutter_getx_boilerplate/app/ui/views/bruna/bruna_view.dart';
import 'package:programow_flutter_getx_boilerplate/app/ui/views/details/details_page.dart';
import 'package:programow_flutter_getx_boilerplate/app/ui/views/home/home_page.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/ui/views/login_view.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/bindings/auth_binding.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/views/car_list_view.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginView(), binding: AuthBinding()),
    GetPage(name: Routes.CARS, page: () => CarListView()),
    // GetPage(name: Routes.INITIAL, page: () => BrunaView()),
  ];
}
