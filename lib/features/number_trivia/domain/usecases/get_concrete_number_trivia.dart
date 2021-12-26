import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:trivia_tdd/core/errors/failures.dart';
import 'package:trivia_tdd/core/usecases/usecase.dart';
import 'package:trivia_tdd/features/number_trivia/domain/enitites/number_trivia.dart';
import 'package:trivia_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number});
  
  @override
  List<Object?> get props => [number];
}
