import 'package:flutter/material.dart';
import 'package:the_flutter_demo/components/custom_button.dart';

class SecondScreen extends StatefulWidget {
  final int counter;
  final Function increment;
  final Function decrement;
  const SecondScreen({super.key, required this.counter, required this.increment, required this.decrement});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter= widget.counter;
  }
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
             child: CustomButton(title: "Back", onTap: (){
                Navigator.pop(context);
             }),
           ),
        ],
      ),
    );
  }

  void decrement() {
    counter--;
    setState(() {});
    widget.decrement();
  }
  void increment() {
    counter++;
    setState(() {});
    widget.increment();
  }
}
