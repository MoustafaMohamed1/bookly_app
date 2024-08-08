import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(),
             SizedBox(height: 16,),
      Text(
        'Saarch results',
        style: Styles.textStyle18,
      ),

    SizedBox(
    height: 16,
    ),
            Expanded(
              child: SearchResultListView(),
            ),
          ],
        ));
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(
            //   bookModel: ,
            // ),
          );
        });
  }
}
