import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_flutter_demo/models/product.dart';

class ProductTileComponent extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const ProductTileComponent({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
              width: Get.width/2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(

                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      border: Border.all(color: Colors.amber),
                    ),
                    child: Column(
                      children:  [
                        Expanded(child: Image.network(product.image,
                          fit: BoxFit.cover,
                        )),
                         Text(product.name.toUpperCase(), style: const TextStyle(color: Colors.blue, fontSize: 15),
                         ),
                         Text(product.retailSellingPrice.toString(), style: const TextStyle(color: Colors.red),
                         ),
                      ],
                    ),
                  ),
                   Positioned(
                    top: 5,
                    right: 10,
                    child: GestureDetector(
                      onTap: ()=>onAdd(),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.amber),
                          color: Colors.amber[50],
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}