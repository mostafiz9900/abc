import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin {
  AnimationController animationController;
  Animation<double> animationLogo;
  Animation<double> animationTextFieldUser;
  Animation<double> animationText;
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
