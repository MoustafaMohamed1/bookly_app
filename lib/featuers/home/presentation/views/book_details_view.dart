import 'package:bookly_app/featuers/home/data/models/BookModel.dart';
import 'package:bookly_app/featuers/home/presentation/manger/simillar_books_cubit/simillar_books__cubit.dart';
import 'package:bookly_app/featuers/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
final BookModel  bookModel;
  @override
  _BookDetailsViewState createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState(){
    BlocProvider.of<SimillarBooksCubit>(context).fetchSimillarBooks(
      category: widget.bookModel.volumeInfo.categories![0]
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(booksModel: widget.bookModel,),
      ),
    );
  }
}
