import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/components/custom_button.dart';
import 'package:the_flutter_demo/screens/second_screen.dart';

import '../models/student.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController passwordController = TextEditingController();
  final Count c = Get.put(Count());

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                title: 'Next Page',
                onTap: () {
                  Get.to(SecondScreen());
                }),
          )
        ],
      ),
    );
  }
}
