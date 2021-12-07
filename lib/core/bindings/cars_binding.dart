import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/data/repositories/cars.repository_impl.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/get_car.usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/list_cars.usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/car_detail.controller.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/cars.controller.dart';

class CarsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarsController>(() {
      return CarsController(
          listCarsUsecase:
              ListCarsUsecase(carsRepository: CarsRepositoryImpl()));
    });
  }
}

class CarDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarController>(() {
      return CarController(
          getCarUsecase: GetCarUsecase(carsRepository: CarsRepositoryImpl()));
    });
  }
}
