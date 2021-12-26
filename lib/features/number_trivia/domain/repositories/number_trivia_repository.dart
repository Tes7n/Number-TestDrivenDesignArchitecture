import 'package:dartz/dartz.dart';
import 'package:trivia_tdd/core/errors/failures.dart';
import 'package:trivia_tdd/features/number_trivia/domain/enitites/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
