import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String value;
  final Function onPressed;
  const CustomButton({super.key, required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(child: Text(value,style: const TextStyle(color: Colors.white), )),
      ),
    );
  }
}