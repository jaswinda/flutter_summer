import 'dart:convert';

import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:the_flutter_demo/models/product.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  final LocalStorage storage = LocalStorage('cart');
  var cart = {}.obs;
  var total = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  RxList<Product> products = <Product>[].obs;

  addToCart(Product product) async {
    var jsonPrroduct =product.toJson();
    if (cart.containsKey(product.id)) {
      cart[product.id]["quantity"] = cart[product.id]["quantity"]! + 1;
    } else {
      jsonPrroduct["quantity"]=1;
      cart[product.id] =jsonPrroduct;
    }
     await storage.setItem("cart",jsonEncode(cart.toJson()));
    
    calculateTotal();
   
  }

  calculateTotal() {
    double localToal = 0;
    for (var element in cart.values) {
      Product product = Product.fromJson(element);
        var price = product.retailSellingPrice;
        var quantity = product.quantity;
        var lineToal = (price)*quantity!;
        localToal = localToal+lineToal;

    }
  }

  getProducts() async {
    var uri = Uri.parse("https://api-demo.everestbilling.com/api/products");
    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer 17|RkTWv456mYJPMKZNWwa3HjXk8Oo5yreBnlfnNDMB'
    });
    var jsonData = response.body;
    var mapData = jsonDecode(jsonData);
    var data = mapData["data"]["data"];
    List<Product> newProducts = [];
    for (var item in data) {
      newProducts.add(Product.fromJson(item));
    }
    products.addAll(newProducts);

    var localCart = await storage.getItem("cart");
     print( localCart);
  }
}
