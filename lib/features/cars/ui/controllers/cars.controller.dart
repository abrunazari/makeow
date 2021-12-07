import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/list_cars.usecase.dart';

class CarsController extends GetxController {
  final ListCarsUsecase listCarsUsecase;
  CarsController({@required this.listCarsUsecase})
      : assert(listCarsUsecase != null);

  List<Car> cars = [];
  String error = '';

  @override
  void onInit() {
    super.onInit();
    listCars();
  }

  listCars() async {
    Either<Failure, List<Car>> result = await listCarsUsecase.call(NoParams());
    result.fold((f) {
      error = 'Couldnt get cars';
    }, (result) {
      print(result);
      cars = result;
    });

    update();
    print("Finishing");
  }
}
