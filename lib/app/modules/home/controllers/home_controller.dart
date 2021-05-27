import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class HomeController extends GetxController with SingleGetTickerProviderMixin {
  final count = 0.obs;
  AnimationController animationController;
  Animation animation;
  final Duration duration = const Duration(milliseconds: 300);
  @override
  void onInit() {
    super.onInit();
    print("Running ${animationController}");
    // animationController=AnimationController(
    //   duration: const Duration(milliseconds: 150),
    //     vsync: this
    // );
    // animation=CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn)..addListener(() {
    //   print("Running");
    //   update();
    // });
    // animationController.forward();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
   // animationController.dispose();
  }
  void increment() => count.value++;
Future<void> initAnimationController()async{
  animationController=AnimationController(
      duration:duration,
      vsync: this
  );
  // animation=CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn)..addListener(() {
  //   print("Running ${animation.value}");
  //   update();
  // });
  // animationController.forward();
}
}
