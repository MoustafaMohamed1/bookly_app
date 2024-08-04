import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/styles.dart';
class BestSellerHomeViewBody extends StatelessWidget {
  const BestSellerHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:  EdgeInsets.symmetric(horizontal: 30),child:SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
              Row(children: [
                Text(
                  '19.99 e',
                  style:
                  Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
              ])
            ],
          )
        ],
      ),
    ),);
  }
}