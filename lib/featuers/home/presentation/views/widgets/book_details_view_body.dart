import 'package:bookly_app/core/utilis/styles.dart';
import 'package:bookly_app/featuers/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/featuers/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/featuers/home/presentation/views/widgets/simillar_box_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_detailes_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .26),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37,
              ),
              const BooksAction(),
              const Expanded(child: SizedBox(
                height: 50,
              ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'You Can also like',
                    style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimillarBookListView(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );

  }
}
