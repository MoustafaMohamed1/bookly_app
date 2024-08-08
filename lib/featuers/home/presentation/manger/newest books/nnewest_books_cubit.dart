import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';
import '../../../data/repos/home_repo.dart';

part 'nnewest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failuer) {
      emit(NewestBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(NewestBooksSucces(books));
    });
  }
}
