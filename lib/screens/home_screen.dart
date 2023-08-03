import 'package:flutter/material.dart';
import 'package:the_flutter_demo/components/custom_button.dart';
import 'package:the_flutter_demo/screens/second_screen.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(title: "-", onTap: ()=>decrement()),
               Text(counter.toString()),
              CustomButton(title: "+", onTap: ()=>increment()),
            ],
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomButton(title: "Go to Next Screen", onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen(counter: counter,
                increment: increment, 
                decrement: decrement,
                )));
             }),
           ),
        ],
      ),
    );
  }

  void decrement() {
    counter--;
    setState(() {});
  }
  void increment() {
    counter++;
    setState(() {});
  }
}
