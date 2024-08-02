import 'package:bookly_app/constants.dart';
import 'package:bookly_app/featuers/home/presentation/views/home_view.dart';
import 'package:bookly_app/featuers/splash/presentation/view_models/views/widgets/sliding_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingContent(slidingAnimation: slidingAnimation),
      ],
    );
  }


  void initSlidingAnimation() {
    animationController = AnimationController(vsync:
    this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(
            animationController);
    animationController.forward();
  }
  void navigateToHome(){
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(() => const HomeView() , transition: Transition.fadeIn , duration: kTransationDuration);
    }
    );
  }

}