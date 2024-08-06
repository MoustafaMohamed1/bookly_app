import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';
import 'best_seler_list_view.dart';
import 'custom_app_bar.dart';
import 'featuerd_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBookListView(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const BestSellerListView(),
            ],
          ),
        ),
      ],
    );
  }
}

