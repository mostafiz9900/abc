import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_animetions/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Wrap(
            children: [
              Center(
                child: Text(
                  'HomeView is working',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(onPressed: ()=>  Get.toNamed(Routes.LOGIN), child: Text('Login Page'.toUpperCase()))
            ],
          );
        }
      ),
    );
  }
}
