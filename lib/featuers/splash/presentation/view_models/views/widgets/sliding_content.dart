import 'package:flutter/material.dart';

import '../../../../../../core/utilis/assets.dart';
class SlidingContent extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingContent({super.key, required this.slidingAnimation});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, child) {
            return SlideTransition(
              position: slidingAnimation,
              child: Image.asset(AssetsData.logo),
            );
          },
        ),
        const SizedBox(height: 4),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, child) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Read free books',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}