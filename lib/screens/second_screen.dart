import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/components/custom_button.dart';

import '../models/student.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  TextEditingController passwordController = TextEditingController();
  final Count c = Get.find<Count>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
                title: 'Increment',
                onTap: () {
                  c.increment();
                }),
          ),
          Obx(() => Text(
                c.count.toString(),
                style: const TextStyle(fontSize: 30),
              )),
          CustomButton(
              title: 'Decrement',
              onTap: () {
                c.decrement();
              }),
          CustomButton(
              title: 'Back',
              onTap: () {
                Get.back();
              })
        ],
      ),
    );
  }
}
