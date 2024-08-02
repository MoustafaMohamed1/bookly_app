import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.23,
      child:AspectRatio(aspectRatio: 2.8 / 4,
        child:Container(


          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImage,
              ),
            ),
          ),
        ),),);
  }
}
