import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children:   [
            staticComponent(),
          scrollViewComponent()
          
          ],
        ));
  }

  Widget staticComponent(){
    return  Expanded(
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          );
  }
  Widget scrollViewComponent(){
    return Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                  ),
                  Container(
                    color: Colors.black,
                    height: 100,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 100,
                  ),
                ],
              ),
            ),
          );
  }
}
