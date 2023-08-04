import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onTap;
  const CustomButton({
    super.key,
    this.color = Colors.black, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title, style: const TextStyle(fontSize: 30, color: Colors.amber)),
      ),
      ),
    );
  }
}
