import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/controllers/product_controller.dart';
import 'package:the_flutter_demo/views/components/product_tile_component.dart';
import 'package:the_flutter_demo/views/pages/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          Row(
            children: [
              Obx(() => Text(productController.cart.length.toString())),
              IconButton(
                onPressed: () {
                  Get.to(() => CartScreen());
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Obx(() => Wrap(
            children: productController.products
                .map((product) => ProductTileComponent(
                     product: product,
                      onAdd: () {
                        productController.addToCart(product);
                      },
                    ))
                .toList())),
      ),
    );
  }
}
