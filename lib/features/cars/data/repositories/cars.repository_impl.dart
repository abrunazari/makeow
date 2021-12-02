import 'package:dartz/dartz.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/repositories/cars.repository.dart';

class CarsRepositoryImpl implements CarsRepository {
  CarsRepositoryImpl();

  @override
  listCars() async {
    return Future.delayed(
        Duration(seconds: 1), () => Right([Car(model: "Toyota", year: 2005)]));
  }
}
