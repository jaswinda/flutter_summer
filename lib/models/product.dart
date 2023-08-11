class Product {
  int? id;
  String? name;
  String? image;
  int? quantity;

  Product({
    required this.id,
    this.name,
    required this.image,
    this.quantity = 1,
  });
}
