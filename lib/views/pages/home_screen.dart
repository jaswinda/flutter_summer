import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/controllers/product_controller.dart';
import 'package:the_flutter_demo/views/components/product_tile_component.dart';

class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children:  productController.products.map((product) => ProductTileComponent(
            name:product.name??'Product Name',
            image:product.image!,
            onAdd: (){
              print("On Add Called Prodcut Name: ${product.name}");
            },
          )).toList()
        ),
      ),
    );
  }
}