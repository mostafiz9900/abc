import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/home/controllers/home_controller.dart';
import 'app/routes/app_pages.dart';

void main()async {
  // final controller=Get.put(HomeController());
 // await controller.initAnimationController();
  runApp(MyApp(),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get Animations",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(primaryColor: Colors.blueGrey),

    );
  }
}

