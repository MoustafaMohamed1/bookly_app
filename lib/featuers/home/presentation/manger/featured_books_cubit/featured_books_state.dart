part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {
  const FeaturedBooksState();
  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailuer extends FeaturedBooksState {
  final String errMessag;

  const FeaturedBooksFailuer(this.errMessag);
}

class FeaturedBooksSucces extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucces(this.books);
}

