import 'package:dartz/dartz.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/repositories/cars.repository.dart';

List<String> carImages = [
  "https://static.turbosquid.com/Preview/2020/02/19__06_13_37/Generic_Supercar_2020_0000.jpg24B7B877-59E5-43BD-9CA3-0497405D24B4Large.jpg",
  "https://static.turbosquid.com/Preview/2020/12/01__13_57_01/Sport23LamoHerso_0000.jpg92FA713A-CEEB-4B2D-BD0E-89F39114CC83Large.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjIPmSsvLLWtjOIN1GqOd3kFMf8H_8U8zXVOOdTIH7KjFPpo58ROfYz-ldGNaZNPk96jQ&usqp=CAU",
  "https://static.turbosquid.com/Preview/001196/690/TZ/3D-generic-supercar-2018_0.jpg"
];

List<Car> carObjects = [
  Car(id: 1, model: "Toyota", year: 2005, imageUrl: carImages[0]),
  Car(id: 2, model: "Honda", year: 2002, imageUrl: carImages[1]),
  Car(id: 3, model: "Hyundai", year: 2021, imageUrl: carImages[2]),
  Car(id: 4, model: "Mustang", year: 2018, imageUrl: carImages[3]),
];

class CarsRepositoryImpl implements CarsRepository {
  CarsRepositoryImpl();

  @override
  listCars() async {
    return Future.delayed(Duration(seconds: 1), () => Right(carObjects));
  }

  @override
  getCar(id) async {
    return Future.delayed(
        Duration(milliseconds: 200), () => Right(carObjects[id - 1]));
  }
}
