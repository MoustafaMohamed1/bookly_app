
import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/core/utilis/api_service.dart';
import 'package:bookly_app/featuers/home/data/models/BookModel.dart';
import 'package:bookly_app/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo
{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks()async {
   try{
     var data = await apiService.get(endPoint: 'volumes?q=subject:programming&Sorting=newest');
     List<BookModel> books= [];
     for(var item in data['items']){
       books.add(BookModel.fromJson(item));
     }
     return right(books);
   }on Exception catch(e){
     return left(ServerFailuer());
   }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}