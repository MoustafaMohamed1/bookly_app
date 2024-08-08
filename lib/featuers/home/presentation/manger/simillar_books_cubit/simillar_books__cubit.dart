import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';
import '../../../data/repos/home_repo.dart';

part 'simillar_books__state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepo) : super(SimillarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimillarBooks({required String category}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failuer) {
      emit(SimillarBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(SimillarBooksSucces(books));
    });
  }
}
