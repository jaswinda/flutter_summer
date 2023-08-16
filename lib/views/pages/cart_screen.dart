import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/controllers/product_controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final ProductController productController = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart Screen"),
        ),
        body: Column(
            children: productController.cart.values
                .map(( product) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: Get.width,
                      decoration:BoxDecoration(
                        color: Colors.amber[50],
                        border: Border.all(color: Colors.amber),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Image.network(
                          product["image"],
                          width: 100,
                          height: 100,
                        ),
                        Text(product["name"]),
                        Text(product["quantity"].toString()),
                      ])),
                ))
                .toList()));
  }
}
