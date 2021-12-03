import 'package:dartz/dartz.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';

abstract class CarsRepository {
  Future<Either<Failure, List<Car>>> listCars();
  Future<Either<Failure, Car>> getCar(int id);
}
