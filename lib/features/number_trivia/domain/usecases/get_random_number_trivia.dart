import 'package:dartz/dartz.dart';
import 'package:trivia_tdd/core/errors/failures.dart';
import 'package:trivia_tdd/core/usecases/usecase.dart';
import 'package:trivia_tdd/features/number_trivia/domain/enitites/number_trivia.dart';
import 'package:trivia_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}