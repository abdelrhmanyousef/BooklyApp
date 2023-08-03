import 'package:booklyapp/Feature/Home/Widget/Presention/Views/HomeView.dart';
import 'package:booklyapp/constans.dart';
import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SkidingText.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;
  @override
  void initState() {
    super.initState();
    InitSlidanimation();
    NavigatToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetesdata.logo),
        SlidingText(SlidingAnimation: SlidingAnimation),
      ],
    );
  }

  void InitSlidanimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    SlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigatToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => HomeView(),
          transition: Transition.fade, duration: ktranstionDurtion);
    });
  }
}
