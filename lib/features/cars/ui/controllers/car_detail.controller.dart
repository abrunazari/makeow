import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/get_car.usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/list_cars.usecase.dart';

class CarController extends GetxController {
  final GetCarUsecase getCarUsecase;
  CarController({@required this.getCarUsecase}) : assert(getCarUsecase != null);

  Car car;

  @override
  void onInit() {
    print("running init function");
    super.onInit();
    print(Get.parameters["carId"]);
    getCar(int.parse(Get.parameters["carId"]));
    print("finishing init function");
  }

  getCar(int id) async {
    Either<Failure, Car> result =
        await getCarUsecase.call(GetCarParams(id: id));
    result.fold((f) {
      // error = 'Couldnt get cars';
    }, (result) {
      print(result);
      car = result;
    });

    update();
  }
}
