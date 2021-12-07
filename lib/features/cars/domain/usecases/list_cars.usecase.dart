import 'package:dartz/dartz.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/repositories/cars.repository.dart';
import 'package:meta/meta.dart';
class ListCarsUsecase implements UseCase<List<Car>, NoParams> {
  final CarsRepository carsRepository;

  ListCarsUsecase({@required this.carsRepository});

  @override
  Future<Either<Failure, List<Car>>> call(NoParams params) async {
    return await carsRepository.listCars();
  }
}
