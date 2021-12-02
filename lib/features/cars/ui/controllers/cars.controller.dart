import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/models/user.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/repositories/user_repository.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/listCars.usecase.dart';

class CarsController extends GetxController {
  final ListCarsUsecase listCarsUsecase;
  CarsController({@required this.listCarsUsecase})
      : assert(listCarsUsecase != null);

  List<Car> cars = [];
  String error = '';

  listCars() async {
    print("Running");
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
