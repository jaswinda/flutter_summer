import 'package:flutter/material.dart';
import 'package:the_flutter_demo/components/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  title: "-",
                  onTap: () {
                   counter--;
                   setState(() {
                     
                   });
                   print(counter);
                  },
                ),
                 Text(counter .toString()),
                CustomButton(
                  title: "+",
                  onTap: () {
                    counter++;
                    setState(() {
                      
                    });
                      print(counter);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
