import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/featuers/home/data/models/BookModel.dart';
import 'package:bookly_app/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo
{
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}