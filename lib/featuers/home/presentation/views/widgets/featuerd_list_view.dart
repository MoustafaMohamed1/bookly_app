import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';
class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.symmetric(horizontal: 8),child: FeaturedListViewItem(),);
          }),
    );
  }
}
