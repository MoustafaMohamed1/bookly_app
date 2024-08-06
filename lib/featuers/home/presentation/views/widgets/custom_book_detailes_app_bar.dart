import 'package:flutter/material.dart';
class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(
        horizontal: 14
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined),),

      ],
    ),);
  }
}