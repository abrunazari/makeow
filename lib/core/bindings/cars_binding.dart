import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/data/repositories/cars.repository_impl.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/listCars.usecase.dart';
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
