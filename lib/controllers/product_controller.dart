import 'dart:convert';

import 'package:get/get.dart';
import 'package:the_flutter_demo/models/product.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var cart = {}.obs;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  RxList<Product> products= <Product>[].obs;

  addToCart(Product product) {
    if (cart.containsKey(product.id)) {
      cart[product.id].quantity = cart[product.id].quantity! + 1;
    } else {
      cart[product.id] = product;
    }
  }

  getProducts() async {
    var uri = Uri.parse("https://api-demo.everestbilling.com/api/products");
    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer 17|RkTWv456mYJPMKZNWwa3HjXk8Oo5yreBnlfnNDMB'
    });
    var jsonData = response.body;
    var mapData = jsonDecode(jsonData);
    var data  = mapData["data"]["data"];
    List<Product> newProducts = [];
    for (var item in data) {
        newProducts.add(Product.fromJson(item));
    }
    products.addAll(newProducts);

    
  }
}
