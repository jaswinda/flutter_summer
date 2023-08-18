import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/views/pages/wallet_payment.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Center(child: ElevatedButton(onPressed: (){
            Get.to(const KhaltiExampleApp());
          }, child: const Text("Pay with Khalti"))),
        ],
      ),
    );
  }
}