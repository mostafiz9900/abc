import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_animetions/app/modules/login/views/local-widget/counter_animation.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<LoginController>(
          builder: (_) {
            print(_.animationText.value);
            print('_.animationLogo.value');
            return Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Container(
                    height: _.animationLogo.value,
                    width: _.animationLogo.value,
                    child: FlutterLogo(),
                  ),
                ),
                AnimatedBuilder(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User',
                    ),
                  ),
                  animation: _.animationTextFieldUser,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(_.animationTextFieldUser.value, 0),
                      child: child,
                    );
                  },
                ),
                CounterAnimation(),
              ],
            );
          },
        ),
      ),
    );
  }
}
