import 'package:bookly_app/featuers/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_detailes_app_bar.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return
     Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(padding: EdgeInsets.symmetric(horizontal: width *.24),
       child: CustomBookImage(),),
      ],
     );
  }
}
