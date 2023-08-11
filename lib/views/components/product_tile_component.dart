import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductTileComponent extends StatelessWidget {
  final String name;
  final String image;
  final Function onAdd;
  const ProductTileComponent({super.key,  this.name="Product Nmae",  this.image="https://risingnepaldaily.com/storage/media/8765/10.jpg", required this.onAdd});

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
                        Expanded(child: Image.network(image,
                          fit: BoxFit.cover,
                        )),
                         Text(name
                         ),
                      ],
                    ),
                  ),
                   Positioned(
                    bottom: 15,
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