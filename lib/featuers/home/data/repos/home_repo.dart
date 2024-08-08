import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuers.dart';
import '../models/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failuer, List<BookModel>>> fetchSimilarBooks({required String category});
}
