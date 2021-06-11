import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin {
  AnimationController animationController;
  Animation<double> animationLogo;
  Animation<double> animationTextFieldUser;
  Animation<double> animationText;
  Animation<double> animation;
  final duration = const Duration(milliseconds: 1000);

  int count = 0;
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(duration: duration, vsync: this);
    animationLogo = Tween<double>(begin: 0, end: 150).animate(animationController)
      ..addListener(() => update());
    animationTextFieldUser = Tween<double>(begin: Get.width, end: 0).animate(animationController)
      ..addListener(() => update());
    animationText=CurvedAnimation(parent: animationController, curve: Curves.easeIn)
    ..addListener(() => update());
    animation=CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animation.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        animationController.reverse();
      }else if(status==AnimationStatus.dismissed){
        animationController.forward();
      }
    });
    animationController.forward();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
  }
  void increment() {
    count++;
    update();
  }
}
