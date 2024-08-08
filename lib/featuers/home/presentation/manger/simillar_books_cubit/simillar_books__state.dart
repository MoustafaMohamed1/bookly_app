part of 'simillar_books__cubit.dart';

@immutable
abstract class SimillarBooksState {}

class SimillarBooksInitial extends SimillarBooksState {}
class SimillarBooksLoading extends SimillarBooksState {}

class SimillarBooksFailuer extends SimillarBooksState {
  final String errMessage;

  SimillarBooksFailuer(this.errMessage);
}

class SimillarBooksSucces extends SimillarBooksState {
  final List<BookModel> books;

  SimillarBooksSucces(this.books);
}

