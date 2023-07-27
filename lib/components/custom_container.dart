import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color; 
  const CustomContainer({super.key,  this.color=Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      width: 100,
    );
  }
}
