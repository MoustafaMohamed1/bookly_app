import 'package:bookly_app/featuers/home/presentation/views/widgets/simillar_books_section.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books_detailes_section.dart';
import 'custom_book_detailes_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Column(
            children: [
              const CustomBookDetailsAppBar(),
              const BookDetailsSection(),


              const Expanded(child: SizedBox(
                height: 50,
              ),
              ),

              const SizedBox(
                height: 16,
              ),
              const SimillarBooksSection(),
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

