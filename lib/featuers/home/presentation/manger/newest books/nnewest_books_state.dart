part of 'nnewest_books_cubit.dart';

@immutable
abstract class NewestBooksState {
  const  NewestBooksState();
  @override
  List<Object> get props => [];

}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailuer extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailuer(this.errMessage);
}
class NewestBooksSucces extends NewestBooksState {
  final List<BookModel>books;

 const NewestBooksSucces(this.books);
}


