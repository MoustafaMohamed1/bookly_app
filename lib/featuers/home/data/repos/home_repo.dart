import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/featuers/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
