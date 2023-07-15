import 'package:book_crud/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P param);
}

class DefaultParams extends Equatable {
  const DefaultParams();

  @override
  List<Object> get props => [];
}
