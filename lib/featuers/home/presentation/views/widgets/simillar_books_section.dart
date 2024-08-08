import 'package:bookly_app/featuers/home/presentation/views/widgets/simillar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'You Can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),

        const SizedBox(
          height: 16,
        ),
        const SimillarBookListView(),
      ],
    );
  }
}