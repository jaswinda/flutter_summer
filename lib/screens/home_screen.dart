import 'package:flutter/material.dart';
import 'package:the_flutter_demo/components/custom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            const Expanded(child: CustomContainer(color: Colors.red)),
            Expanded(
                child: Column(
              children: const [
                Expanded(child: CustomContainer(color: Colors.black)),
                Expanded(child: CustomContainer(color: Colors.blue)),
              ],
            ))
          ],
        ));
  }
}
