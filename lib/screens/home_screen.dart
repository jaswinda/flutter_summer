import 'package:flutter/material.dart';
import 'package:the_flutter_demo/components/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                value: "+",
                onPressed: () {
                  count++;
                  setState(() {
                    
                  });
                },
              ),
              Text(count.toString()),
              CustomButton(
                value: "-",
                onPressed: () {
                  count--;
                  setState(() {
                    
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
