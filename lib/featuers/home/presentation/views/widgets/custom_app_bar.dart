import 'package:bookly_app/core/utilis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/assets.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right:30, left:30,top: 40,bottom: 20),
      child: Row(

        children: [
          Image.asset(AssetsData.logo,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,  ),)
        ],
      ),
    );
  }
}