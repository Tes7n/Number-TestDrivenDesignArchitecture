import 'package:trivia_tdd/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// gets the cached [numberTrivalModel] which was gotten the last time
  /// the user had internet connection.
  ///
  /// throws [noLocalDataException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(NumberTriviaModel cacheToTrivia);
}
