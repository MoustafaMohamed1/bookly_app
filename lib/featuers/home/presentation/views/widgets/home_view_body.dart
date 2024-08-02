import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'custom_app_bar.dart';
import 'featuerd_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomAppBar(), FeaturedBookListView(),
        const SizedBox(height: 50,),
        Text('Best Seller',style: Styles.titleMidium,)
      ],
    )
    );

  }
}
