import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(),
     body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:   [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ],
         ),
       ],
     ),
    );
  }
}