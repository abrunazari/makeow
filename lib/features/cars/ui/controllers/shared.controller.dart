import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/usecases/list_cars.usecase.dart';

class SharedController extends GetxController {
  SharedController();

  List<Car> cars;

  @override
  void onInit() {
    super.onInit();
    getCar();
  }

  getCar() async {
    cars = [Car(id: 10, imageUrl: "hsndgfn", model: "gnsldfgn", year: 2000)];
    update();
  }

  addCar() async {
    cars.add(Car(
        id: 11,
        imageUrl: "aaaaaaaaaaaaaa",
        model: "aaaaaaaaaaaaaaaaa",
        year: 2005));
    update();
    print(cars);
  }
}
