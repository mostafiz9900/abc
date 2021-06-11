import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_animetions/app/routes/app_pages.dart';


// void main()async {
//   // final controller=Get.put(HomeController());
//  // await controller.initAnimationController();
//   runApp(MyApp(),
//   );
// }
void main() => runApp(
  DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get Animations",
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(primaryColor: Colors.blueGrey),

    );
  }
}

