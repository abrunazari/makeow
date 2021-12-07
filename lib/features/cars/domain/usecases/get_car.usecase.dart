import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/repositories/cars.repository.dart';
import 'package:meta/meta.dart';

class GetCarUsecase implements UseCase<Car, GetCarParams> {
  final CarsRepository carsRepository;

  GetCarUsecase({@required this.carsRepository});

  @override
  Future<Either<Failure, Car>> call(GetCarParams params) async {
    return await carsRepository.getCar(params.id);
  }
}

class GetCarParams extends Equatable {
  final int id;

  GetCarParams({this.id});

  @override
  List<Object> get props => [id];
}
