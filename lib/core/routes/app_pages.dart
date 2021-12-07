import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/core/bindings/auth_binding.dart';
import 'package:programow_flutter_getx_boilerplate/core/bindings/cars_binding.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/ui/views/login_view.dart';

import 'package:programow_flutter_getx_boilerplate/features/cars/ui/views/car_detail.view.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/views/car_list_view.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.LOGIN, page: () => LoginView(), binding: AuthBinding()),
    GetPage(
        name: Routes.INITIAL,
        page: () => CarListView(),
        binding: CarsBinding()),
    GetPage(
        name: Routes.CARS, page: () => CarListView(), binding: CarsBinding()),
    GetPage(
        name: Routes.CAR,
        page: () => CarDetailView(),
        binding: CarDetailBinding()),
  ];
}
